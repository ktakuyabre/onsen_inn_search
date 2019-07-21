from django.urls import include, path
from api.views import AuthInfoDeleteView, VoteQueryViewSet
from rest_auth.views import UserDetailsView

from api.views import FacebookLogin, TwitterLogin

urlpatterns = [
    path('rest-auth/', include('rest_auth.urls')),
    path('rest-auth/registration/', include('rest_auth.registration.urls')),
    path('rest-auth/facebook/', FacebookLogin.as_view(), name='fb_login'),
    path(r'rest-auth/twitter/', TwitterLogin.as_view(), name='twitter_login'),
    path('rest-auth/delete/', AuthInfoDeleteView.as_view()),
    #path('rest-auth/<int:pk>/', UserDetailsView.as_view()),
    #path('rest-auth/<uid>/', UserDetailsView.as_view(), name="user-profile"),
    #path('votes/', VoteQueryViewSet.as_view(), name="votes"),
    #path(r'vote', VoteQueryViewSet),
    #path(r'', include(urls)),
]
