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
    category Int(0~10)<br />
    vote_score Int()<br />
    num_vote_up Int()<br />
    num_vote_down Int()<br />
    onsen ForeignKey(Onsen)<br />

##API

###Get user data

Endpoint:

```
/api/users/
```        

Parameters:<br />
page: specify the page<br />

Response:
```
{
    "count": 9,
    "next": null,
    "previous": null,
    "results": [
        {
            "email": "amazon@example.com",
            "username": "amazon"
        },
        {
            "email": "ebay@example.com",
            "username": "ebay"
        },
        {
            "email": "huawei@example.com",
            "username": "huawei"
        },
        {
            "email": "intel@example.com",
            "username": "intel"
        },
        {
            "email": "yahoo@example.com",
            "username": "yahoo"
        },
        {
            "email": "admin@example.com",
            "username": "admin"
        },
        {
            "email": "apple@example.com",
            "username": "apple"
        },
        {
            "email": "google@example.com",
            "username": "google"
        },
        {
            "email": "netflix@example.com",
            "username": "netflix"
        }
    ]
}
```

###Get onsen data(10 entries per page)

Endpoint:

```
/api/onsens/
```        

Parameters:<br />
page: specify the page<br />

Response:

```
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

###Get onsen inn data(10 entries per page)

Endpoint:

```
/api/onsen_inns/
```

Paramters:<br />
id: return the onsen inn that has the specified id as its primary key<br />
category: return onsen inns that belong to the specified category(18 categories in total)<br />
ordering: sort onsen inns by the specific key out of "vote_score", "num_vote_up" and "num_vote_down"<br />
page: specify the page<br />

Example: 
```
/api/onsen_inns/?id=1
```

Response:

```
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
            "vote_score": 1,
            "num_vote_up": 1,
            "num_vote_down": 0,
            "inn_id": 386526,
            "inn_name": "とよとみ温泉川島旅館",
            "inn_photo": "http://localhost:8000/media/images/inn_image_386526.jpg",
            "inn_min_price": 7700,
            "review_room": "4.1",
            "review_bath": "4.6",
            "review_breakfast": "4.6",
            "review_dinner": "4.5",
            "review_service": "4.4",
            "review_cleaness": "4.8",
            "rooms_total": 15,
            "baths_total": 0,
            "service_leisure": "[]",
            "free_wifi": true,
            "convenience_store": false,
            "hand_towel": true,
            "body_wash": true,
            "hairdryer": false,
            "onsui_toilet": false,
            "dental_amenities": true,
            "bar_soap": false,
            "duvet": false,
            "hair_brush": true,
            "bath_towel": true,
            "yukata": true,
            "razor": true,
            "shampoo": true,
            "pajamas": false,
            "shower_cap": false,
            "conditioner": true,
            "bathrobe": false,
            "cotton_swab": false,
            "category": 1
        }
    ]
}
```

Example: 

```
/api/onsen_inns/?category=1&page=3
```

Response:

```
{
    "count": 224,
    "next": "http://localhost:8000/api/onsen_inns/?category=1&page=4",
    "previous": "http://localhost:8000/api/onsen_inns/?category=1&page=2",
    "results": [
        {
            "id": 58,
            "onsen": {
                "id": 399,
                "onsen_id": 419,
                "onsen_name": "湯野浜温泉",
                "onsen_name_kana": "ゆのはまおんせん",
                "onsen_address": "山形県鶴岡市湯野浜",
                "region": "",
                "prefecture": "",
                "large_area": "酒田・鶴岡",
                "small_area": "鶴岡・湯野浜・あつみ",
                "nature_of_onsen": "硫黄泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50053,
                "onsen_area_caption": null
            },
            "vote_score": 0,
            "num_vote_up": 0,
            "num_vote_down": 0,
            "inn_id": 372090,
            "inn_name": "海辺の宿福住",
            "inn_photo": "http://localhost:8000/media/images/inn_image_372090.jpg",
            "inn_min_price": 10000,
            "review_room": "3.8",
            "review_bath": "3.7",
            "review_breakfast": "4.1",
            "review_dinner": "4.5",
            "review_service": "3.9",
            "review_cleaness": "3.7",
            "rooms_total": 20,
            "baths_total": 0,
            "service_leisure": "['ルームサービス', 'マッサージ（有料）', '貸自転車', 'マージャン（有料）', 'ゴルフ（有料）', 'パターゴルフ（有料）', '釣り（有料）']",
            "free_wifi": false,
            "convenience_store": false,
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
            "shower_cap": false,
            "conditioner": true,
            "bathrobe": false,
            "cotton_swab": true,
            "category": 1
        },
        {
            "id": 60,
            "onsen": {
                "id": 399,
                "onsen_id": 419,
                "onsen_name": "湯野浜温泉",
                "onsen_name_kana": "ゆのはまおんせん",
                "onsen_address": "山形県鶴岡市湯野浜",
                "region": "",
                "prefecture": "",
                "large_area": "酒田・鶴岡",
                "small_area": "鶴岡・湯野浜・あつみ",
                "nature_of_onsen": "硫黄泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50053,
                "onsen_area_caption": null
            },
            "vote_score": 0,
            "num_vote_up": 0,
            "num_vote_down": 0,
            "inn_id": 365056,
            "inn_name": "福宝館漁師の宿",
            "inn_photo": "http://localhost:8000/media/images/inn_image_365056.jpg",
            "inn_min_price": 8500,
            "review_room": "3.5",
            "review_bath": "4.2",
            "review_breakfast": "4.5",
            "review_dinner": "4.5",
            "review_service": "4.0",
            "review_cleaness": "3.8",
            "rooms_total": 5,
            "baths_total": 0,
            "service_leisure": "['マッサージ（有料）', 'ゴルフ（有料）']",
            "free_wifi": false,
            "convenience_store": false,
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
            "shower_cap": false,
            "conditioner": false,
            "bathrobe": false,
            "cotton_swab": false,
            "category": 1
        },
            ...
```

Example: 

```
/api/onsen_inns/?category=5&ordering=-vote_score
```

*(-vote_score -> descending order, vote_score -> ascending order)<br >

Response:

```
{
    "count": 20,
    "next": "http://localhost:8000/api/onsen_inns/?category=5&ordering=-vote_score&page=2",
    "previous": null,
    "results": [
        {
            "id": 2,
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
            "vote_score": 2,
            "num_vote_up": 2,
            "num_vote_down": 0,
            "inn_id": 350276,
            "inn_name": "ホテル神居岩",
            "inn_photo": "http://localhost:8000/media/images/inn_image_350276.jpg",
            "inn_min_price": 4259,
            "review_room": "3.2",
            "review_bath": "4.0",
            "review_breakfast": "3.9",
            "review_dinner": "4.4",
            "review_service": "4.1",
            "review_cleaness": "3.4",
            "rooms_total": 19,
            "baths_total": 0,
            "service_leisure": "['マッサージ（有料）', '囲碁（有料）', 'マージャン（有料）']",
            "free_wifi": false,
            "convenience_store": false,
            "hand_towel": true,
            "body_wash": false,
            "hairdryer": false,
            "onsui_toilet": false,
            "dental_amenities": true,
            "bar_soap": false,
            "duvet": true,
            "hair_brush": true,
            "bath_towel": true,
            "yukata": true,
            "razor": false,
            "shampoo": false,
            "pajamas": false,
            "shower_cap": false,
            "conditioner": false,
            "bathrobe": false,
            "cotton_swab": true,
            "category": 5
        },
        {
            "id": 29,
            "onsen": {
                "id": 188,
                "onsen_id": 242,
                "onsen_name": "東八幡平温泉　(八幡平)",
                "onsen_name_kana": "ひがしはちまんたいおんせん",
                "onsen_address": "岩手県岩手郡松尾村寄木",
                "region": "",
                "prefecture": "",
                "large_area": "安比・八幡平・二戸",
                "small_area": "安比・八幡平・二戸",
                "nature_of_onsen": "硫黄泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50037,
                "onsen_area_caption": null
            },
            "vote_score": 0,
            "num_vote_up": 0,
            "num_vote_down": 0,
            "inn_id": 344746,
            "inn_name": "天然温泉の宿安暖庭(アンダンテ)",
            "inn_photo": "http://localhost:8000/media/images/inn_image_344746.jpg",
            "inn_min_price": 7870,
            "review_room": "4.3",
            "review_bath": "4.3",
            "review_breakfast": "4.6",
            "review_dinner": "5.0",
            "review_service": "5.0",
            "review_cleaness": "4.6",
            "rooms_total": 5,
            "baths_total": 0,
            "service_leisure": "['体育館（有料）', 'グランド（有料）', 'テニス（有料）', 'ゴルフ（有料）', 'パターゴルフ（有料）', '乗馬（有料）', 'そば打ち（有料）']",
            "free_wifi": true,
            "convenience_store": false,
            "hand_towel": true,
            "body_wash": false,
            "hairdryer": true,
            "onsui_toilet": false,
            "dental_amenities": true,
            "bar_soap": false,
            "duvet": true,
            "hair_brush": false,
            "bath_towel": true,
            "yukata": true,
            "razor": false,
            "shampoo": false,
            "pajamas": false,
            "shower_cap": false,
            "conditioner": false,
            "bathrobe": false,
            "cotton_swab": false,
            "category": 5
        },
           ...
```

###Authentication

###Login<br />

Endpoint:

```
/api/rest-auth/login (POST)
```

Paramters:<br />
username<br />
email<br />
password<br />

Returns Token key

###Logout<br /> 

Endpoint:

```
/api/rest-auth/logout (POST)
```

###Password reset<br />

Endpoint:

```
/api/rest-auth/password/reset (POST)
```

Paramters:<br />
email<br />

###Password confirm<br />

Endpoint:

```
rest-auth/password/reset/confirm (POST)
```

Paramters:<br />
uid<br />
token<br />
new_password1<br />
new_password2<br />

###Password change<br />

Endpoint:

```
/api/rest-auth/password/change/ (POST)
```

Parameters:<br />
new_password1<br />
new_password2<br />
old_password<br />

###User detail<br />

Endpoint:

```
/api/rest-auth/user/ (GET, PUT, PATCH)
```

Returns pk, username, email, first_name, last_name <br />


###Registration<br />

Endpoint:

```
/api/rest-auth/registration/ (POST)
```

Paramters:<br />
username<br />
password1<br />
password2<br />
email<br />

###Verifiy email<br />

Endpoint:

```
/api/rest-auth/registration/verify-email/ (POST)
```

Parameters:<br />
key<br />

###Delete user (DELETE)<br />
Endpoint:

```
/api/users/rest-auth/delete
```

###Vote<br />

###Upvote<br />

Endpoint:

```
/api/votes/up/
```

Parameters:<br />
id: the id of onsen inn that you want to vote for

Example:

```
/api/votes/up/?id=4
```

Response:

```
{
    "message": "Successfully voted"
}
```

###Downvote<br />

Endpoint:

```
/api/votes/down/
```

Parameters:<br />
id: the id of onsen inn that you want to downvote for<br />

Example:

```
/api/votes/down/?id=4
```

Response:

```
{
    "message": "Successfully down-voted"
}
```

###Exists<br />

Check if the user already voted for the onsen inn<br />

Endpoint:

```
/api/votes/exists/
```

Parameters:<br />
id: the id of onsen inn<br />

Example:

```
/api/votes/up/?id=4
```

Response:

```
{
    "voted": false
}
```

###Count<br />
Returns the total count of votes for the onsen inn

Endpoint:

```
/api/votes/count/
```

Parameters:<br />
id: the id of onsen inn<br />

Example:

```
/api/votes/count/?id=2
```

Response:

```
{
    "vote_count": 2
}
```

###Users<br />
Returns a list of users who voted and their voting date<br />

Endpoint:

```
/api/votes/users/
```

Parameters:<br />
id: the id of onsen inn<br />

Example:

```
/api/votes/users/?id=2
```

Response:

```
{
    "users_count": [
        [
            4,
            "2019-07-14T11:21:59.976981Z"
        ],
        [
            10,
            "2019-07-14T11:20:44.401717Z"
        ]
    ]
}
```

###Delete vote<br />
Unvote for the inn model<br />

Endpoint:

```
/api/votes/delete/
```

Parameters:<br />
id: the id of onsen inn<br />

Example:

```
/api/votes/delete/?id=2
```

Response:

```
{
    "message": "Successfully deleted"
}
```


