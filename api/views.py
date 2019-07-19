from rest_framework.views import APIView
from rest_framework.permissions import IsAuthenticated, AllowAny
from api.permissions import IsLoggedInUserOrAdmin, IsAdminUser
from django.shortcuts import render
from django.urls import include, path
from rest_framework import viewsets, generics
from .serializers import UserSerializer, OnsenSerializer, OnsenInnSerializer, VoteSerializer
from onsen_inns.models import Onsen, OnsenInn
from django.core import serializers
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

from django.core.serializers.json import DjangoJSONEncoder

from django_filters import Filter
from django_filters.fields import Lookup

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
#class OnsenInnViewSet(generics.ListAPIView):
    """
    API endpoint that allows onsen inns to be viewed or edited.
    """
    queryset = OnsenInn.objects.all()
    serializer_class = OnsenInnSerializer
    '''filter_backends = (DjangoFilterBackend, filters.OrderingFilter,)
    #filter_fields = ('id', 'category')
    filter_fields = ('id')
    ordering_fields = ('vote_score', 'num_vote_up', 'num_vote_down' )'''
    #filter_backends = (django_filters.rest_framwork.DjangoFilterBackend, filters.OrderingFilter,)
    #ordering = ('-vote_score', '-num_vote_up', '-num_vote_down' )
    def get_queryset(self):
        queryset = OnsenInn.objects.all()
        id_value = self.request.query_params.get('id', None)
        if id_value is not None:
            queryset = queryset.filter(id__in=id_value)

        category_value = self.request.query_params.get('category', None)
        if category_value is not None:
            category_list = category_value.split(',')
            queryset = queryset.filter(category__in=category_list)

        ordering_value = self.request.query_params.get('ordering', None)
        if ordering_value is not None:
            queryset = queryset.order_by(ordering_value)

        return queryset


'''class ListFilter(Filter):
  def filter(self, qs, value):
    return super(ListFilter, self).filter(qs, Lookup(value.split(u","), "in"))'''

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

    @list_route(methods=["GET"])
    def favorites(self, request):
        try:
            user_id = request.user.id
            onsen_inn = OnsenInn.objects.first()
            queryset = onsen_inn.votes.all(user_id)
            serializer_class = OnsenInnSerializer
            #favorites = OnsenInnSerializer(queryset, many=True)
            favorites = OnsenInnSerializer(queryset, many=True).data
            count = len(favorites)
            page_size = 10
            next_page = 2
            #next = None
            next = ""
            previous_page = 0
            #previous = None
            previous = ""

            page_value = self.request.query_params.get('page', None)
            if page_value is not None:
                page_value = int(page_value)
                index = (page_value-1)*10
                favorites = favorites[index:index+page_size-1]
                next_page = page_value + 1
                previous_page = page_value - 1

            if (next_page-1)*page_size > count:
                #next = None
                next = ""
            else:
                next = "http://localhost:8000/api/votes/all/?page="+str(next_page)

            if previous_page == 0:
                #previous = Nbone
                previous = ""
            else:
                previous = "http://localhost:8000/api/votes/all/?page="+str(previous_page)
            response = { "count": count, "next": next, "previous": previous, "results": favorites}
            #response = { "count": count, "next": next, "previous": previous, "results": "test"}
            #response = { "count": count }
            #response = json.dumps(response, cls=CustomEncoder)
            '''queryset = OnsenInn.objects.all()
            id_value = self.request.query_params.get('id', None)
            if id_value is not None:
                queryset = queryset.filter(id__in=id_value)

                category_value = self.request.query_params.get('category', None)
            if category_value is not None:
                category_list = category_value.split(',')
                queryset = queryset.filter(category__in=category_list)'''
                                         

        #return queryset
            #message = queryset
            #favorites = [obj.as_dict() for obj in queryset]
            #favorites = [model_to_dict(obj) for obj in queryset]
            #favorites = json.dumps({"data": favorites})
            #favorites = serializer_class.serialize('json', queryset)
            #favorites = serializer.serialize('json', queryset, cls=CustomEncoder)
            #favorites = serializer.serialize('json', favorites, cls=CustomEncoder)
            #favorites = serializer_class.serialize('json', queryset, cls=CustomEncoder)
            #for onsen_inn in all_onsen_inns:
            #    favorites.append(onsen_inn.__dict__)
            #return HttpReponse(favorites, content_type='application/json', encoder=CustomEncoder)
            #return Response(status=200, data=favorites)
            #return JsonResponse(response)
            return Response(response)
            #return favorites
                                           
                                           
                                          
        
            
        except Exception as e:
            message = e
            return Response({'message': message})

        #return (all_onsen_inns)
        #return Response({'message': message})
        #return Response({'results': favorites})
        #return Response({'results': 'test'})'''

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

'''class VoteFavoritesViewSet(viewsets.ModelViewSet):
    user_id = self.context['request'].query_params.user.id
    onsen_inn = OnsenInn.objects.first()    
    queryset = onsen_inn.votes.all(user_id)
    serializer_class = OnsenInnSerializer
    permission_classes = (IsAuthenticated,)'''

class CustomEncoder(DjangoJSONEncoder):
    def default(self, obj):
        if isinstance(obj, ImageFieldFile):
            return obj.url
        if isinstance(obj, NameError):
            return None
        
        return super(LazyEncoder, self).default(obj)
