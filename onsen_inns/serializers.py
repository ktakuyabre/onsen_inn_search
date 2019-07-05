from .models import Onsen, OnsenInn
from rest_framework import serializers

class OnsenSerializer(serializers.ModelSerializer):
    class Meta:
        model = Onsen
        fields = '__all__'

class OnsenInnSerializer(serializers.ModelSerializer):

    onsen = OnsenSerializer()
    #onsen.inn_photo = serializers.SerializerMethodField('get_image_url')
    #onsen.inn_photo = serializers.ImageField(max_length=None, use_url=True)
    class Meta:
        model = OnsenInn        
        fields = '__all__'

    '''def get_iamge_url(self, obj):
        return obj.image.url'''
        
