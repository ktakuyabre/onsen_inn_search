#onsen_inn_search


##Docker

Download Docker on your Mac or Windows <br />
Mac : https://hub.docker.com/editions/community/docker-ce-desktop-mac <br />
Windows : https://hub.docker.com/editions/community/docker-ce-desktop-windows (Windows)

Open Docker.


##Setup

```
$ docker-compose up
```


When you shut down jaran\_api

```
$ docker-compose down
```


##Development

When you want to work on the docker container

```
$ docker exec -it <container id of the onsen_inn_search_web> bash
```

or 

```
$ docker exec -it $(docker ps | grep onsen_inn_search_web_1 | awk {'print $1'}) bash
```

When you run a command on the docker container

```
$ docker exec -i <container id of the onsen_inn_search_web> <command>
```

or

```
$ docker exec -i $(docker ps | grep onsen_inn_search_web_1 | awk {'print $1'}) <command>
```


##Backup and restore database

Back up

```
$ docker exec <container id of postgres> pg_dump -U postgres postgres > db_data.sql
```

or 

```
$ docker exec $(docker ps | grep postgres | awk '{print $1}') pg_dump -U postgres postgres > db_data.sql
```

Restore

```
$ docker exec -i <container id of postgres> psql -U postgres -d postgres < db_data.sql
```

or 

```
$ docker exec -i $(docker ps | grep postgres | awk '{print $1}') psql -U postgres -d postgres < db_data.sql
```


##DB Schema

Onsen:<br />
    onsen_id Int(Not Null)<br />
    onsen_name Char(max_length=30, Not Null)<br />
    onsen_name_kana Char(max_length=40, Not Null)<br />
    onsen_address Char(max_length=40)<br />
    region Char(max_length=10, Not Null)<br />
    prefecture Char(max_length=10, Not Null)<br />
    large_area Char(max_length=30, Not Null)<br />
    small_area Char(max_length=30, Not Null)<br />
    nature_of_onsen Char(max_length=10, Not Null)<br />
    onsen_area_name Char(max_length=20)<br />
    onsen_area_name_kana Char(max_length=30)<br />
    onsen_area_id Int()<br />
    onsen_area_caption Text()<br />

OnsenInn: <br />
    inn_id Int(Not Null)<br />
    inn_name Char(max_length=100, Not Null)<br />
    inn_photo Image()<br />
    inn_min_price Int(Not Null)<br />
    review_room Decimal(max_digits=2, decimal_places=1)<br />
    review_bath Decimal(max_digits=2, decimal_places=1)<br />
    review_breakfast Decimal(max_digits=2, decimal_places=1)<br />
    review_dinner Decimal(max_digits=2, decimal_places=1)<br />
    review_service Decimal(max_digits=2, decimal_places=1)<br />
    review_cleaness Decimal(max_digits=2, decimal_places=1)<br />
    rooms_total Int(Not Null)<br />
    baths_total Int(Not Null)<br />
    service_leisure = List(Char)<br />
    free_wifi Bool()<br />
    convenience_store Bool()<br />
    hand_towel Bool()<br />
    body_wash Bool()<br />
    hairdryer Bool()<br />
    onsui_toilet Bool()<br />
    dental_amenities Bool()<br />
    bar_soap Bool()<br />
    duvet Bool()<br />
    hair_brush Bool()<br />
    bath_towel Bool()<br />
    yukata Bool()<br />
    razor Bool()<br />
    shampoo Bool()<br />
    pajamas Bool()<br />
    shower_cap Bool()<br />
    conditioner Bool()<br />
    bathrobe Bool()<br />
    cotton_swab Bool()<br />
    category Int(0~17)<br />
    onsen ForeignKey(Onsen)<br />

##API

Get onsen data(10 entries per page)

Endpoint:

'''
/api/onsens/
'''        

Parameters:<br />
page: specify the page<br />

Response:

'''
{
    "count": 3255,
    "next": "http://localhost:8000/api/onsens/?page=2",
    "previous": null,
    "results": [
        {
            "id": 1,
            "onsen_id": 1,
            "onsen_name": "èåææ",
            "onsen_name_kana": "とよとみおんせん",
            "onsen_address": "åæéååéèåçèåææ",
            "region": "",
            "prefecture": "",
            "large_area": "çå・çè",
            "small_area": "çå",
            "nature_of_onsen": "ååçæ",
            "onsen_area_name": null,
            "onsen_area_name_kana": null,
            "onsen_area_id": 50651,
            "onsen_area_caption": null
        },
        {
            "id": 2,
            "onsen_id": 2,
            "onsen_name": "çåææ",
            "onsen_name_kana": "わっかないおんせん",
            "onsen_address": "åæéçååååè",
            "region": "",
            "prefecture": "",
            "large_area": "çå・çè",
            "small_area": "稚内",
            "nature_of_onsen": "塩化物泉",
            "onsen_area_name": null,
            "onsen_area_name_kana": null,
            "onsen_area_id": 50653,
            "onsen_area_caption": null
        },
        ...
'''

Get onsen inn data(10 entries per page)

Endpoint:

'''
/api/onsen_inns/
'''

Paramters:<br />
id: return the onsen inn that has the specified id as its primary key<br />
category: return onsen inns that belong to the specified category(18 categories in total)<br />
page: specify the page<br />

Example: 
'''
/api/onsen_inns/?id=1
'''

Response:

'''
{
    "count": 1,
    "next": null,
    "previous": null,
    "results": [
        {
            "id": 1,
            "onsen": {
                "id": 1,
                "onsen_id": 1,
                "onsen_name": "豊富温泉",
                "onsen_name_kana": "とよとみおんせん",
                "onsen_address": "北海道天塩郡豊富町豊富温泉",
                "region": "",
                "prefecture": "",
                "large_area": "稚内・留萌",
                "small_area": "稚内",
                "nature_of_onsen": "塩化物泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50651,
                "onsen_area_caption": null
            },
            "inn_id": 386526,
            "inn_name": "とよとみ温泉川島旅館",
            "inn_photo": "http://localhost:8000/media/images/inn_image_386526.jpg",
            "inn_min_price": 7700,
            "review_room": "4.3",
            "review_bath": "4.7",
            "review_breakfast": "4.3",
            "review_dinner": "4.5",
            "review_service": "4.6",
            "review_cleaness": "4.4",
            "rooms_total": 129,
            "baths_total": 5,
            "service_leisure": "['エステ（有料）', 'マッサージ（有料）', '将棋（有料）', '囲碁（有料）', 'マージャン（有料）', 'リフレクソロジー']",
            "free_wifi": true,
            "convenience_store": true,
            "hand_towel": true,
            "body_wash": true,
            "hairdryer": true,
            "onsui_toilet": true,
            "dental_amenities": true,
            "bar_soap": true,
            "duvet": false,
            "hair_brush": true,
            "bath_towel": true,
            "yukata": true,
            "razor": true,
            "shampoo": true,
            "pajamas": false,
            "shower_cap": true,
            "conditioner": true,
            "bathrobe": false,
            "cotton_swab": true,
            "category": 1
        }
'''

Example: 

'''
/api/onsen_inns/?category=1&page=3
'''

Response:

'''
{
    "count": 951,
    "next": "http://localhost:8000/api/onsen_inns/?category=1&page=4",
    "previous": "http://localhost:8000/api/onsen_inns/?category=1&page=2",
    "results": [
        {
            "id": 61,
            "onsen": {
                "id": 28,
                "onsen_id": 28,
                "onsen_name": "仁伏温泉",
                "onsen_name_kana": "にぶしおんせん",
                "onsen_address": "北海道川上郡弟子屈町川湯仁伏",
                "region": "",
                "prefecture": "",
                "large_area": "釧路・阿寒・根室・川湯・屈斜路",
                "small_area": "川湯・屈斜路",
                "nature_of_onsen": "塩化物泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50021,
                "onsen_area_caption": null
            },
            "inn_id": 360915,
            "inn_name": "ワッカＢＢＢ",
            "inn_photo": "http://localhost:8000/media/images/inn_image_360915.jpg",
            "inn_min_price": 31000,
            "review_room": "4.3",
            "review_bath": "4.7",
            "review_breakfast": "4.3",
            "review_dinner": "4.5",
            "review_service": "4.6",
            "review_cleaness": "4.4",
            "rooms_total": 129,
            "baths_total": 5,
            "service_leisure": "['エステ（有料）', 'マッサージ（有料）', '将棋（有料）', '囲碁（有料）', 'マージャン（有料）', 'リフレクソロジー']",
            "free_wifi": true,
            "convenience_store": true,
            "hand_towel": true,
            "body_wash": true,
            "hairdryer": true,
            "onsui_toilet": true,
            "dental_amenities": true,
            "bar_soap": true,
            "duvet": false,
            "hair_brush": true,
            "bath_towel": true,
            "yukata": true,
            "razor": true,
            "shampoo": true,
            "pajamas": false,
            "shower_cap": true,
            "conditioner": true,
            "bathrobe": false,
            "cotton_swab": true,
            "category": 1
        },
        {
            "id": 62,
            "onsen": {
                "id": 28,
                "onsen_id": 28,
                "onsen_name": "仁伏温泉",
                "onsen_name_kana": "にぶしおんせん",
                "onsen_address": "北海道川上郡弟子屈町川湯仁伏",
                "region": "",
                "prefecture": "",
                "large_area": "釧路・阿寒・根室・川湯・屈斜路",
                "small_area": "川湯・屈斜路",
                "nature_of_onsen": "塩化物泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50021,
                "onsen_area_caption": null
            },
            "inn_id": 366033,
            "inn_name": "ワッカヌプリ",
            "inn_photo": "http://localhost:8000/media/images/inn_image_366033.jpg",
            "inn_min_price": 35925,
            "review_room": "4.3",
            "review_bath": "4.7",
            "review_breakfast": "4.3",
            "review_dinner": "4.5",
            "review_service": "4.6",
            "review_cleaness": "4.4",
            "rooms_total": 129,
            "baths_total": 5,
            "service_leisure": "['エステ（有料）', 'マッサージ（有料）', '将棋（有料）', '囲碁（有料）', 'マージャン（有料）', 'リフレクソロジー']",
            "free_wifi": true,
            "convenience_store": true,
            "hand_towel": true,
            "body_wash": true,
            "hairdryer": true,
            "onsui_toilet": true,
            "dental_amenities": true,
            "bar_soap": true,
            "duvet": false,
            "hair_brush": true,
            "bath_towel": true,
            "yukata": true,
            "razor": true,
            "shampoo": true,
            "pajamas": false,
            "shower_cap": true,
            "conditioner": true,
            "bathrobe": false,
            "cotton_swab": true,
            "category": 1
        },
            ...
'''



