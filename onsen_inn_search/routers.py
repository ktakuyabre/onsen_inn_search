from django.urls import include, path
from rest_framework import routers
from api.views import UserViewSet, OnsenViewSet, OnsenInnViewSet, VoteQueryViewSet
#from api.views import UserViewSet, OnsenViewSet, OnsenInnViewSet, VoteQueryViewSet, VoteFavoritesViewSet
#import rest_auth.views.LoginView  


router = routers.DefaultRouter()

router.register(r'users', UserViewSet)
#router.register(r'rest-auth', include('rest_auth.urls'))
#router.register(r'rest-_auth.urls', LoginView)
router.register(r'onsens', OnsenViewSet)
router.register(r'onsen_inns', OnsenInnViewSet)
router.register(r'votes', VoteQueryViewSet)
#router.register(r'votes/all', VoteFavoritesViewSet)
