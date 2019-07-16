from rest_framework import serializers
from users.models import CustomUser
from onsen_inns.models import Onsen, OnsenInn
from vote.models import Vote
from django.db import transaction

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = ('email', 'username', )

'''class AccountSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True, required=False)

    class Meta:
        model = 
        fields = ('id', 'username', 'email', 'profile', 'password')

    def create(self, validated_data):
        return Account.objects.create_user(request_data=validated_data)'''

class OnsenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Onsen
        fields = '__all__'

class OnsenInnSerializer(serializers.ModelSerializer):

    onsen = OnsenSerializer()
    #vote_count = serializers.IntegerField(read_only=True)
    #vote_count = serializers.SerializerMethodField('get_votes')
    #onsen.inn_photo = serializers.SerializerMethodField('get_image_url')
    #onsen.inn_photo = serializers.ImageField(max_length=None, use_url=True)
    class Meta:
        model = OnsenInn        
        fields = '__all__'
        '''fields = [        
            'vote_count',
        ]'''
    
    def get_votes(self, obj):
        return OnsenInn.objects.get(pk=obj.id).votes.count()

    '''def get_iamge_url(self, obj):
        return obj.image.url'''

class VoteSerializer(serializers.ModelSerializer):

    """ Returns serialized data of Vote instances. """

    @transaction.atomic
    class Meta:
        model = Vote
        fields = '__all__'
        
