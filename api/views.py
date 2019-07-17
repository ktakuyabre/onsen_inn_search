from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated, AllowAny
from api.permissions import IsLoggedInUserOrAdmin, IsAdminUser
from django.shortcuts import render
from django.urls import include, path
from rest_framework import viewsets, generics
from .serializers import UserSerializer, OnsenSerializer, OnsenInnSerializer, VoteSerializer
from onsen_inns.models import Onsen, OnsenInn
from users.models import CustomUser
from vote.models import Vote
from rest_framework import filters
from django.db.models import Count
from rest_framework.decorators import list_route
from rest_framework.response import Response
from django_filters.rest_framework import DjangoFilterBackend
from collections import Counter

from allauth.socialaccount.providers.facebook.views import FacebookOAuth2Adapter
from rest_auth.registration.views import SocialLoginView

from allauth.socialaccount.providers.twitter.views import TwitterOAuthAdapter
from rest_auth.registration.views import SocialLoginView
from rest_auth.social_serializers import TwitterLoginSerializer

class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = CustomUser.objects.all()
    serializer_class = UserSerializer

    # Configure permissions
    def get_permissions(self):
        permission_classes = []
        if self.action == 'create':
            permission_classes = [AllowAny]
        elif self.action == 'retrieve' or self.action == 'update' or self.action == 'partial_update':
            permission_classes = [IsLoggedInUserOrAdmin]
        elif self.action == 'list' or self.action == 'destroy':
            permission_classes = [IsAdminUser]
        return [permission() for permission in permission_classes]
    
class OnsenViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows onsens to be viewed or edited.
    """
    #permission_classes = (IsAuthenticated,)

    queryset = Onsen.objects.all()
    serializer_class = OnsenSerializer

class OnsenInnViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows onsen inns to be viewed or edited.
    """
    queryset = OnsenInn.objects.all()
    serializer_class = OnsenInnSerializer
    #filter_backends = (django_filters.rest_framwork.DjangoFilterBackend, filters.OrderingFilter,)
    filter_backends = (DjangoFilterBackend, filters.OrderingFilter,)
    filter_fields = ('id', 'category')
    ordering_fields = ('vote_score', 'num_vote_up', 'num_vote_down' )
    #ordering = ('-vote_score', '-num_vote_up', '-num_vote_down' )
    '''def get_queryset(self):
        category_value = self.request.QUERY_PARAMS.get('category', None)
        if category_value:
            category_list =  category_value.split(',')
            queryset = OnsenInn.objects.filter(category__in=category_list)
        return queryset'''

'''class OnsenInnViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows onsen inns to be viewed or edited.
    """
    #queryset = OnsenInn.objects.all()
    #vote_all
    #queryset = OnsenInn.objects.annotate(vote_count=Count('votes'))
    serializer_class = OnsenInnSerializer
    filter_fields = ('id', 'category')
    filter_backends = (filters.OrderingFilter,)
    ordering_fields = ('inn_name', 'vote_count' )'''

class FacebookLogin(SocialLoginView):
    adapter_class = FacebookOAuth2Adapter

class TwitterLogin(SocialLoginView):
    serializer_class = TwitterLoginSerializer
    adapter_class = TwitterOAuthAdapter


class VoteQueryViewSet(viewsets.ModelViewSet):
    queryset = Vote.objects.all()
    serializer_class = VoteSerializer
    permission_classes = (IsAuthenticated,)
    #filter_backends = (filters.OrderingFilter, filters.SearchFilter)

    '''def get_serializer_class(self):
        if self.action in ["retrieve", "list", "update", "create"]:
            return self.serializer_class

        return self.serializer_class'''

    @list_route(methods=["POST", "GET"])
    def up(self, request):
        user_id = request.user.id
        id = request.query_params.get("id", None)
        onsen_inn = OnsenInn.objects.get(pk=id)
        voted = onsen_inn.votes.exists(user_id)
        message = "Already voted"        
        if voted == False:
            onsen_inn.votes.up(user_id)
            message = "Successfully voted"            
            #message = "Please provide a like or dislike parameter."
        return Response({'message': message})

    @list_route(methods=["POST", "GET"])
    def down(self, request):
        user_id = request.user.id
        id = request.query_params.get("id", None)
        onsen_inn = OnsenInn.objects.get(pk=id)
        #voted = onsen_inn.votes.exists(user_id)
        #if voted = "true":
        #    msg
        onsen_inn.votes.down(user_id)
        return Response({'message': 'Successfully down-voted'})

    @list_route(methods=["GET"])
    def exists(self, request):
        user_id = request.user.id
        id = request.query_params.get("id")
        onsen_inn = OnsenInn.objects.get(pk=id)
        voted = onsen_inn.votes.exists(user_id)

        return Response({'voted': voted})

    '''@list_route(methods=["GET"])
    def all(self, request):
        try:
            user_id = request.user.id
            id = request.query_params.get("id")
            #onsen_inns = OnsenInn.objects.get(pk=id)
            #onsen_inns = OnsenInn.objects.get(pk=id)
            all_onsen_inns = onsen_inn.votes.all(user_id)
            #all_onsen_inns = OnsenInn.votes.all(user_id)
        except Exception as e:
            message = e
            return Response({'message': message})

        return Response({'all': all_onsen_inns})
        #return all_onsen_inns'''

    @list_route(methods=["GET"])
    def count(self, request):
        id = request.query_params.get("id")
        onsen_inn = OnsenInn.objects.get(pk=id)
        vote_count = {'vote_count': onsen_inn.votes.count()}

        return Response(vote_count)

    @list_route(methods=["GET"])
    def users(self, request):
        id = request.query_params.get("id")
        onsen_inn = OnsenInn.objects.get(pk=id)
        users_count = {'users_count': onsen_inn.votes.user_ids()}

        return Response(users_count)

    @list_route(methods=["GET"])
    def likes(self, request):
        user_id = request.user.id
        id = request.query_params.get("id")
        onsen_inn = OnsenInn.objects.get(pk=id)
        #all_onsen_inns = onsen_inn.votes.all(user_id)
        votes = {'num_vote_up': onsen_inn.num_vote_up, 
                 'num_vote_down': onsen_inn.num_vote_down}
        results = votes

        return Response(results)

    @list_route(methods=["POST", "GET"])
    def delete(self, request):
        user_id = request.user.id
        id = request.query_params.get("id", None)
        onsen_inn = OnsenInn.objects.get(pk=id)
        onsen_inn.votes.delete(user_id)
        return Response({'message': 'Successfully deleted'})


class AuthInfoDeleteView(generics.DestroyAPIView):
    """
    API endpoint that allows users to delete their own accounts.
    """
    permission_classes = (IsAuthenticated,)
    serializer_class = UserSerializer
    lookup_field = 'email'
    queryset = CustomUser.objects.all()

    def get_object(self):
        try:
            instance = self.queryset.get(email=self.request.user.email)
            return instance
        except Account.DoesNotExist:
            raise Http404
