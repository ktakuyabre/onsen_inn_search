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
    free_wifi Bool()<br />
    convenience_store Bool()<br />
    hand_towel Bool()<br />
    dental_amenities Bool()<br />
    bath_towel Bool()<br />
    shampoo Bool()<br />
    conditioner Bool()<br />
    body_wash Bool()<br />
    bar_soap Bool()<br />
    yukata Bool()<br />
    pajamas Bool()<br />
    bathrobe Bool()<br />
    hairdryer Bool()<br />
    duvet Bool()<br />
    razor Bool()<br />
    shower_cap Bool()<br />
    cotton_swab Bool()<br />
    onsui_toilet Bool()<br />
    hair_brush Bool()<br />
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
category: return onsen inns that belong to the specified category<br />
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
            "inn_id": 0,
            "inn_name": "とよとみ温泉川島旅館",
            "inn_photo": null,
            "inn_min_price": 10000,
            "review_room": "4.2",
            "review_bath": "3.6",
            "review_breakfast": "3.5",
            "review_dinner": "2.7",
            "review_service": "0.5",
            "review_cleaness": "4.1",
            "rooms_total": 15,
            "baths_total": 39,
            "free_wifi": false,
            "convenience_store": true,
            "hand_towel": true,
            "dental_amenities": true,
            "bath_towel": false,
            "shampoo": false,
            "conditioner": true,
            "body_wash": true,
            "bar_soap": true,
            "yukata": true,
            "pajamas": true,
            "bathrobe": false,
            "hairdryer": false,
            "duvet": false,
            "razor": true,
            "shower_cap": false,
            "cotton_swab": true,
            "onsui_toilet": false,
            "hair_brush": true,
            "category": 3
        }
    ]
}
'''

Example: 

'''
/api/onsen_inns/?category=1&page=3
'''

Response:

'''
{
    "count": 849,
    "next": "http://localhost:8000/api/onsen_inns/?category=1&page=4",
    "previous": "http://localhost:8000/api/onsen_inns/?category=1&page=2",
    "results": [
        {
            "id": 259,
            "onsen": {
                "id": 54,
                "onsen_id": 54,
                "onsen_name": "十勝岳温泉",
                "onsen_name_kana": "とかちだけおんせん",
                "onsen_address": "北海道空知郡上富良野町十勝岳温泉",
                "region": "",
                "prefecture": "",
                "large_area": "富良野・美瑛・トマム",
                "small_area": "富良野",
                "nature_of_onsen": "単純温泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50015,
                "onsen_area_caption": null
            },
            "inn_id": 258,
            "inn_name": "大雪山白金観光ホテル",
            "inn_photo": null,
            "inn_min_price": 10000,
            "review_room": "0.6",
            "review_bath": "3.7",
            "review_breakfast": "2.0",
            "review_dinner": "3.8",
            "review_service": "2.1",
            "review_cleaness": "3.3",
            "rooms_total": 74,
            "baths_total": 31,
            "free_wifi": true,
            "convenience_store": true,
            "hand_towel": true,
            "dental_amenities": false,
            "bath_towel": false,
            "shampoo": false,
            "conditioner": true,
            "body_wash": true,
            "bar_soap": true,
            "yukata": true,
            "pajamas": false,
            "bathrobe": true,
            "hairdryer": true,
            "duvet": false,
            "razor": false,
            "shower_cap": false,
            "cotton_swab": false,
            "onsui_toilet": false,
            "hair_brush": false,
            "category": 1
        },
        {
            "id": 270,
            "onsen": {
                "id": 68,
                "onsen_id": 68,
                "onsen_name": "十勝川温泉",
                "onsen_name_kana": "とかちがわおんせん",
                "onsen_address": "北海道河東郡音更町十勝川温泉",
                "region": "",
                "prefecture": "",
                "large_area": "帯広・十勝",
                "small_area": "帯広・十勝川",
                "nature_of_onsen": "塩化物泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50025,
                "onsen_area_caption": null
            },
            "inn_id": 269,
            "inn_name": "十勝川温泉第一ホテル",
            "inn_photo": null,
            "inn_min_price": 10000,
            "review_room": "2.0",
            "review_bath": "3.6",
            "review_breakfast": "4.1",
            "review_dinner": "0.3",
            "review_service": "2.2",
            "review_cleaness": "1.1",
            "rooms_total": 111,
            "baths_total": 82,
            "free_wifi": true,
            "convenience_store": false,
            "hand_towel": false,
            "dental_amenities": true,
            "bath_towel": false,
            "shampoo": false,
            "conditioner": true,
            "body_wash": false,
            "bar_soap": true,
            "yukata": false,
            "pajamas": true,
            "bathrobe": false,
            "hairdryer": true,
            "duvet": false,
            "razor": true,
            "shower_cap": true,
            "cotton_swab": false,
            "onsui_toilet": false,
            "hair_brush": true,
            "category": 1
        },
        {
            "id": 274,
            "onsen": {
                "id": 68,
                "onsen_id": 68,
                "onsen_name": "十勝川温泉",
                "onsen_name_kana": "とかちがわおんせん",
                "onsen_address": "北海道河東郡音更町十勝川温泉",
                "region": "",
                "prefecture": "",
                "large_area": "帯広・十勝",
                "small_area": "帯広・十勝川",
                "nature_of_onsen": "塩化物泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50025,
                "onsen_area_caption": null
            },
            ...
'''



