from django.shortcuts import render
from django.urls import include, path
from .models import Onsen, OnsenInn
from rest_framework import viewsets
from .serializers import OnsenSerializer, OnsenInnSerializer

class OnsenViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows onsens to be viewed or edited.
    """
    queryset = Onsen.objects.all()
    serializer_class = OnsenSerializer

class OnsenInnViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows onsen inns to be viewed or edited.
    """
    queryset = OnsenInn.objects.all()
    filter_fields = ('id', 'category')
    serializer_class = OnsenInnSerializer

