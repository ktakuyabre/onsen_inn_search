from django.urls import include, path
from api.views import AuthInfoDeleteView, VoteQueryViewSet
from rest_auth.views import UserDetailsView

urlpatterns = [
    path('rest-auth/', include('rest_auth.urls')),
    path('rest-auth/registration/', include('rest_auth.registration.urls')),
    #path('rest-auth/<uid>/', UserDetailsView.as_view(), name="user-profile"),
    path('rest-auth/<uid>/', UserDetailsView.as_view()),
    path('rest-auth/delete/', AuthInfoDeleteView.as_view()),
    #path('votes/', VoteQueryViewSet.as_view(), name="votes"),
    #path(r'vote', VoteQueryViewSet),
    #path(r'', include(urls)),
]
