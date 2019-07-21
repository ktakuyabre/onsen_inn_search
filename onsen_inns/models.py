from django.conf import settings
from django.db import models
from django_mysql.models import ListCharField
#from votes.managers import VotableManager
from vote.models import VoteModel

class Onsen(models.Model):

    onsen_id = models.IntegerField()       
    onsen_name = models.CharField(max_length=30)
    onsen_name_kana = models.CharField(max_length=40)
    onsen_address = models.CharField(blank=True, null=True, max_length=40)
    region = models.CharField(max_length=10)
    prefecture = models.CharField(max_length=10)
    large_area = models.CharField(max_length=30)
    small_area = models.CharField(max_length=30)
    nature_of_onsen = models.CharField(max_length=10)
    onsen_area_name = models.CharField(blank=True, null=True, max_length=20)
    onsen_area_name_kana = models.CharField(blank=True, null=True, max_length=30)
    onsen_area_id = models.IntegerField(blank=True, null=True)
    onsen_area_caption = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.onsen_name


class OnsenInn(VoteModel, models.Model):
    
    inn_id = models.IntegerField()
    inn_name = models.CharField(max_length=100)
    inn_photo = models.ImageField(upload_to='images/', default='images/default.jpg', blank=True, null=True)

    #extra data
    inn_photo_2 = models.ImageField(upload_to='images/', default='images/default.jpg', blank=True, null=True)
    inn_photo_3 = models.ImageField(upload_to='images/', default='images/default.jpg', blank=True, null=True)
    inn_photo_4 = models.ImageField(upload_to='images/', default='images/default.jpg', blank=True, null=True)
    inn_headline = models.CharField(blank=True, null=True, max_length=300)
    inn_overview = models.TextField(blank=True, null=True)

    inn_min_price = models.IntegerField()
    review_room = models.DecimalField(blank=True, null=True, max_digits=2, decimal_places=1)
    review_bath = models.DecimalField(blank=True, null=True, max_digits=2, decimal_places=1)
    review_breakfast = models.DecimalField(blank=True, null=True, max_digits=2, decimal_places=1)
    review_dinner = models.DecimalField(blank=True, null=True, max_digits=2, decimal_places=1)
    review_service = models.DecimalField(blank=True, null=True, max_digits=2, decimal_places=1)
    review_cleaness = models.DecimalField(blank=True, null=True, max_digits=2, decimal_places=1)
    rooms_total = models.IntegerField(blank=True, null=True)
    baths_total = models.IntegerField(blank=True, null=True)

    service_leisure = ListCharField(
       base_field=models.CharField(max_length=20),
       size = 30,
       max_length=(30*21),
       blank=True,
       null=True
    )
    
    free_wifi = models.BooleanField(blank=True, null=True)
    convenience_store = models.BooleanField(blank=True, null=True)

    hand_towel = models.BooleanField(blank=True, null=True)
    body_wash = models.BooleanField(blank=True, null=True)
    hairdryer = models.BooleanField(blank=True, null=True)
    onsui_toilet = models.BooleanField(blank=True, null=True)

    dental_amenities = models.BooleanField(blank=True, null=True)
    bar_soap = models.BooleanField(blank=True, null=True)
    duvet = models.BooleanField(blank=True, null=True)
    hair_brush = models.BooleanField(blank=True, null=True)

    bath_towel = models.BooleanField(blank=True, null=True)
    yukata = models.BooleanField(blank=True, null=True)
    razor = models.BooleanField(blank=True, null=True)

    #separate_toilet = models.BooleanField(blank=True, null=True)
    shampoo = models.BooleanField(blank=True, null=True)
    pajamas = models.BooleanField(blank=True, null=True)
    shower_cap = models.BooleanField(blank=True, null=True)

    conditioner = models.BooleanField(blank=True, null=True)
    bathrobe = models.BooleanField(blank=True, null=True)
    cotton_swab = models.BooleanField(blank=True, null=True)
    
    category = models.IntegerField(blank=True, null=True)
    onsen = models.ForeignKey(Onsen, on_delete=models.CASCADE)
    #votes = VotableManager()

    def __str__(self):
        return self.inn_name
