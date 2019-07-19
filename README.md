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
    inn_headline Char(max_length=100, Not Null)<br />
    inn_overview Char(max_length=200, Not Null)<br />
    inn_photo Image()<br />
    inn_photo_2 Image()<br />
    inn_photo_3 Image()<br />
    inn_photo_4 Image()<br />
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
```

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
            "inn_photo_2": "http://localhost:8000/media/images/inn_image_386526_2.jpg",
            "inn_photo_3": "http://localhost:8000/media/images/inn_image_386526_3.jpg",
            "inn_photo_4": "http://localhost:8000/media/images/inn_image_386526_4.jpg",
            "inn_headline": "世界でも珍しいオイル成分をたっぷり含んだ源泉かけ流し天然温泉",
            "inn_overview": "家に帰ってきたような心地よさ。良質なバターや新鮮生クリームなど厳選素材でつくった、北海道内の魅力あふれるラインナップが揃います。",
            "inn_min_price": 7700,
            "review_room": "4.1",
            "review_bath": "4.6",
            "review_breakfast": "4.6",
            "review_dinner": "4.5",
            "review_service": "4.4",
            "review_cleaness": "4.8",
            "rooms_total": 15,
            "baths_total": 2,
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
    "count": 483,
    "next": "http://localhost:8000/api/onsen_inns/?category=1&page=4",
    "previous": "http://localhost:8000/api/onsen_inns/?category=1&page=2",
    "results": [
        {
            "id": 250,
            "onsen": {
                "id": 69,
                "onsen_id": 69,
                "onsen_name": "幕別温泉",
                "onsen_name_kana": "まくべつおんせん",
                "onsen_address": "北海道中川郡幕別町依田",
                "region": "",
                "prefecture": "",
                "large_area": "帯広・十勝",
                "small_area": "十勝・サホロ",
                "nature_of_onsen": "硫黄泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50028,
                "onsen_area_caption": null
            },
            "vote_score": 0,
            "num_vote_up": 0,
            "num_vote_down": 0,
            "inn_id": 395438,
            "inn_name": "幕別パークホテル悠湯館",
            "inn_photo": "http://localhost:8000/media/images/inn_image_395438.jpg",
            "inn_photo_2": "http://localhost:8000/media/images/inn_image_395438_2.jpg",
            "inn_photo_3": "http://localhost:8000/media/images/inn_image_395438_3.jpg",
            "inn_photo_4": "http://localhost:8000/media/images/inn_image_395438_4.jpg",
            "inn_headline": "琥珀のモール温泉・源泉１００％掛け流しの贅と檜の屋上露天風呂",
            "inn_overview": "北海道遺産のモール温泉自家源泉を豊富に流し温泉天国幕別町はパークゴルフ発祥の地。町営無料コースでゴルフ三昧。部屋食で十勝牛陶板焼やかにシャブもご用意。ロビーインターネット接続無料（無線LAN）",
            "inn_min_price": 5092,
            "review_room": "3.5",
            "review_bath": "4.7",
            "review_breakfast": "4.1",
            "review_dinner": "4.4",
            "review_service": "4.1",
            "review_cleaness": "3.8",
            "rooms_total": 20,
            "baths_total": 4,
            "service_leisure": "['マッサージ（有料）', '将棋（有料）', '囲碁（有料）', 'マージャン（有料）', 'ゴルフ（有料）']",
            "free_wifi": false,
            "convenience_store": false,
            "hand_towel": true,
            "body_wash": true,
            "hairdryer": false,
            "onsui_toilet": false,
            "dental_amenities": true,
            "bar_soap": true,
            "duvet": true,
            "hair_brush": false,
            "bath_towel": true,
            "yukata": true,
            "razor": false,
            "shampoo": true,
            "pajamas": false,
            "shower_cap": false,
            "conditioner": true,
            "bathrobe": false,
            "cotton_swab": false,
            "category": 1
        },
        {
            "id": 318,
            "onsen": {
                "id": 299,
                "onsen_id": 290,
                "onsen_name": "大湯温泉",
                "onsen_name_kana": "おおゆおんせん",
                "onsen_address": "秋田県鹿角市十和田大湯",
                "region": "",
                "prefecture": "",
                "large_area": "十和田湖・大館・鹿角",
                "small_area": "八幡平・十和田湖",
                "nature_of_onsen": "含鉄泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50044,
                "onsen_area_caption": null
            },
            "vote_score": 0,
            "num_vote_up": 0,
            "num_vote_down": 0,
            "inn_id": 373412,
            "inn_name": "大館雪沢温泉郷清風荘",
            "inn_photo": "http://localhost:8000/media/images/inn_image_373412.jpg",
            "inn_photo_2": "http://localhost:8000/media/images/inn_image_373412_2.jpg",
            "inn_photo_3": "http://localhost:8000/media/images/inn_image_373412_3.jpg",
            "inn_photo_4": "http://localhost:8000/media/images/inn_image_373412_4.jpg",
            "inn_headline": "大舘市内から車で15分。四季折々の自然を楽しめる絶景露天風呂の宿",
            "inn_overview": "☆全室インターネット接続無料（Wi-Fi）☆ 大舘から十和田湖をつなぐ「樹海ライン」沿いに位置し、美しい自然景観に囲まれた露天風呂が人気。 温泉で日頃のお疲れを癒し、くつろぎのひとときを。",
            "inn_min_price": 4259,
            "review_room": "3.9",
            "review_bath": "4.3",
            "review_breakfast": "3.7",
            "review_dinner": "3.8",
            "review_service": "3.7",
            "review_cleaness": "3.7",
            "rooms_total": 20,
            "baths_total": 4,
            "service_leisure": "[]",
            "free_wifi": true,
            "convenience_store": false,
            "hand_towel": true,
            "body_wash": true,
            "hairdryer": true,
            "onsui_toilet": true,
            "dental_amenities": true,
            "bar_soap": true,
            "duvet": false,
            "hair_brush": false,
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
    "count": 549,
    "next": "http://localhost:8000/api/onsen_inns/?category=5&ordering=-vote_score&page=2",
    "previous": null,
    "results": [
        {
            "id": 51,
            "onsen": {
                "id": 33,
                "onsen_id": 33,
                "onsen_name": "阿寒湖畔温泉",
                "onsen_name_kana": "あかんこはんおんせん",
                "onsen_address": "北海道阿寒郡阿寒町阿寒湖畔",
                "region": "",
                "prefecture": "",
                "large_area": "釧路・阿寒・根室・川湯・屈斜路",
                "small_area": "釧路・阿寒",
                "nature_of_onsen": "炭酸水素塩泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50022,
                "onsen_area_caption": null
            },
            "vote_score": 0,
            "num_vote_up": 0,
            "num_vote_down": 0,
            "inn_id": 364256,
            "inn_name": "カムイの湯ラビスタ阿寒川",
            "inn_photo": "http://localhost:8000/media/images/inn_image_364256.jpg",
            "inn_photo_2": "http://localhost:8000/media/images/inn_image_364256_2.jpg",
            "inn_photo_3": "http://localhost:8000/media/images/inn_image_364256_3.jpg",
            "inn_photo_4": "http://localhost:8000/media/images/inn_image_364256_4.jpg",
            "inn_headline": "全客室に源泉温泉檜風呂付！絶景に出遇う眺望という名の『隠れ家』",
            "inn_overview": "エゾシカも現れる壮大な自然に佇む『秘境の宿』全客室に檜風呂の温泉付！大浴場と３つの無料貸切風呂で湯めぐり三昧☆夜食に無料の夜鳴きそば☆湯上りにアイス、ドリンク（朝）をサービス！",
            "inn_min_price": 11111,
            "review_room": "4.5",
            "review_bath": "4.4",
            "review_breakfast": "3.9",
            "review_dinner": "4.0",
            "review_service": "4.1",
            "review_cleaness": "4.5",
            "rooms_total": 64,
            "baths_total": 3,
            "service_leisure": "['エステ（有料）', '将棋', '囲碁', 'デイユース（有料）', 'リフレクソロジー']",
            "free_wifi": true,
            "convenience_store": false,
            "hand_towel": true,
            "body_wash": true,
            "hairdryer": true,
            "onsui_toilet": true,
            "dental_amenities": true,
            "bar_soap": false,
            "duvet": true,
            "hair_brush": true,
            "bath_towel": true,
            "yukata": false,
            "razor": true,
            "shampoo": true,
            "pajamas": true,
            "shower_cap": true,
            "conditioner": true,
            "bathrobe": false,
            "cotton_swab": true,
            "category": 5
        },
        {
            "id": 65,
            "onsen": {
                "id": 38,
                "onsen_id": 38,
                "onsen_name": "旭岳温泉",
                "onsen_name_kana": "あさひだけおんせん",
                "onsen_address": "北海道上川郡東川町勇駒別",
                "region": "",
                "prefecture": "",
                "large_area": "旭川・層雲峡",
                "small_area": "層雲峡・天人峡",
                "nature_of_onsen": "単純温泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50016,
                "onsen_area_caption": null
            },
            "vote_score": 0,
            "num_vote_up": 0,
            "num_vote_down": 0,
            "inn_id": 315840,
            "inn_name": "ラビスタ大雪山",
            "inn_photo": "http://localhost:8000/media/images/inn_image_315840.jpg",
            "inn_photo_2": "http://localhost:8000/media/images/inn_image_315840_2.jpg",
            "inn_photo_3": "http://localhost:8000/media/images/inn_image_315840_3.jpg",
            "inn_photo_4": "http://localhost:8000/media/images/inn_image_315840_4.jpg",
            "inn_headline": "無料で使える３種類貸切風呂♪夏の花々と道産食材のディナーを満喫",
            "inn_overview": "標高１０６０ｍに位置♪目前に大雪山連邦 最高峰を旭岳を望む♪春夏秋冬 色々な風景を楽しめれる場所♪美しさ厳しさ、圧倒的な大自然！〜『神々の遊ぶ庭』へようこそ眺望と言う名のホテル〜",
            "inn_min_price": 6481,
            "review_room": "4.2",
            "review_bath": "4.3",
            "review_breakfast": "4.1",
            "review_dinner": "3.8",
            "review_service": "3.9",
            "review_cleaness": "4.0",
            "rooms_total": 85,
            "baths_total": 3,
            "service_leisure": "['エステ（有料）', 'マッサージ（有料）', '将棋', '囲碁', 'ゴルフ（有料）', 'デイユース（有料）', 'リフレクソロジー']",
            "free_wifi": true,
            "convenience_store": false,
            "hand_towel": true,
            "body_wash": true,
            "hairdryer": true,
            "onsui_toilet": true,
            "dental_amenities": true,
            "bar_soap": true,
            "duvet": true,
            "hair_brush": true,
            "bath_towel": true,
            "yukata": true,
            "razor": false,
            "shampoo": true,
            "pajamas": true,
            "shower_cap": false,
            "conditioner": true,
            "bathrobe": false,
            "cotton_swab": true,
            "category": 5
        },
           ...
```

Example: 

```
/api/onsen_inns/?category=3,10&ordering=-vote_score
```

Response:

```
{
    "count": 47,
    "next": "http://localhost:8000/api/onsen_inns/?category=3%2C10&ordering=-vote_score&page=2",
    "previous": null,
    "results": [
        {
            "id": 3202,
            "onsen": {
                "id": 2518,
                "onsen_id": 1860,
                "onsen_name": "壁湯温泉",
                "onsen_name_kana": "かべゆおんせん",
                "onsen_address": "大分県玖珠郡九重町町田",
                "region": "",
                "prefecture": "",
                "large_area": "九重・久住・竹田・長湯",
                "small_area": "九重",
                "nature_of_onsen": "単純温泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50442,
                "onsen_area_caption": null
            },
            "vote_score": 0,
            "num_vote_up": 0,
            "num_vote_down": 0,
            "inn_id": 306960,
            "inn_name": "御宿みやこ",
            "inn_photo": "http://localhost:8000/media/images/inn_image_306960.jpg",
            "inn_photo_2": "http://localhost:8000/media/images/inn_image_306960_2.jpg",
            "inn_photo_3": "http://localhost:8000/media/images/inn_image_306960_3.jpg",
            "inn_photo_4": "http://localhost:8000/media/images/inn_image_306960_4.jpg",
            "inn_headline": "大分県九重町宝泉寺温泉の中にある源泉１００％掛流しの小さな湯宿",
            "inn_overview": "柔らかな源泉掛流しの無色澄明無味無臭の湯は、髪にも優しく体の芯から寛げ日々の疲れを癒してくれます。当館はペットをお連れのお客様でも安心して御宿泊いただけます。ごゆっくりとお寛ぎくださいませ。",
            "inn_min_price": 6000,
            "review_room": "3.5",
            "review_bath": "3.9",
            "review_breakfast": "0.0",
            "review_dinner": "4.6",
            "review_service": "4.3",
            "review_cleaness": "3.9",
            "rooms_total": 13,
            "baths_total": 2,
            "service_leisure": "['ペットOK(ケージ持込/部屋', 'ラウンジ持込OK)']",
            "free_wifi": true,
            "convenience_store": false,
            "hand_towel": true,
            "body_wash": true,
            "hairdryer": true,
            "onsui_toilet": true,
            "dental_amenities": true,
            "bar_soap": false,
            "duvet": true,
            "hair_brush": false,
            "bath_towel": true,
            "yukata": true,
            "razor": false,
            "shampoo": true,
            "pajamas": false,
            "shower_cap": false,
            "conditioner": true,
            "bathrobe": false,
            "cotton_swab": true,
            "category": 3
        },
        {
            "id": 1445,
            "onsen": {
                "id": 1227,
                "onsen_id": 1093,
                "onsen_name": "弥彦温泉",
                "onsen_name_kana": "やひこおんせん",
                "onsen_address": "新潟県西蒲原郡弥彦村弥彦",
                "region": "",
                "prefecture": "",
                "large_area": "燕・三条・岩室・弥彦",
                "small_area": "燕・三条・岩室・弥彦",
                "nature_of_onsen": "塩化物泉",
                "onsen_area_name": null,
                "onsen_area_name_kana": null,
                "onsen_area_id": 50200,
                "onsen_area_caption": null
            },
            "vote_score": 0,
            "num_vote_up": 0,
            "num_vote_down": 0,
            "inn_id": 304984,
            "inn_name": "弥彦館冥加屋",
            "inn_photo": "http://localhost:8000/media/images/inn_image_304984.jpg",
            "inn_photo_2": "http://localhost:8000/media/images/inn_image_304984_2.jpg",
            "inn_photo_3": "http://localhost:8000/media/images/inn_image_304984_3.jpg",
            "inn_photo_4": "http://localhost:8000/media/images/inn_image_304984_4.jpg",
            "inn_headline": "弥彦神社前の江戸時代創業、老舗温泉旅館。ペットも泊まれる宿",
            "inn_overview": "現在の当主で75代目。全て異なる造りの客室は宮大工の手による凝った細工が残されている。大浴場は24時間入浴可能。お食事は個室の宴会場になります。",
            "inn_min_price": 10000,
            "review_room": "0.0",
            "review_bath": "0.0",
            "review_breakfast": "0.0",
            "review_dinner": "0.0",
            "review_service": "0.0",
            "review_cleaness": "0.0",
            "rooms_total": 0,
            "baths_total": 1,
            "service_leisure": "['マッサージ（有料）', 'マージャン', 'デイユース（有料）', 'ペットOK（有料）(ケージ持込/部屋', 'ラウンジ持込OK)']",
            "free_wifi": false,
            "convenience_store": false,
            "hand_towel": true,
            "body_wash": true,
            "hairdryer": false,
            "onsui_toilet": false,
            "dental_amenities": true,
            "bar_soap": true,
            "duvet": true,
            "hair_brush": false,
            "bath_towel": true,
            "yukata": true,
            "razor": false,
            "shampoo": true,
            "pajamas": false,
            "shower_cap": false,
            "conditioner": true,
            "bathrobe": false,
            "cotton_swab": false,
            "category": 10
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

###Favorites<br />
Returns a list of onsen inns the user voted for<br />

Endpoint:

```
/api/votes/favorites/
```

Parameters:<br />
page: specify the page

Example:

```
/api/votes/favorites/
```

Response:

```
{
    'count': 2, 
    'next': '', 
    'previous': '', 
    'results': [{'id': 4,'onsen': {'id': 2, 'onsen_id': 2, 'onsen_name': '稚内温泉', 'onsen_name_kana': 'わっかないおんせん', 'onsen_address': '北海道稚内市富士見', 'region': '', 'prefecture': '', 'large_area': '稚内・留萌', 'small_area': '稚内', 'nature_of_onsen': '塩化物泉', 'onsen_area_name': None, 'onsen_area_name_kana': None, 'onsen_area_id': 50653, 'onsen_area_caption': None}, 'vote_score': 2, 'num_vote_up': 2, 'num_vote_down': 0, 'inn_id': 353632, 'inn_name': '天然温泉天北の湯ドーミーイン稚内', 'inn_photo': '/media/images/inn_image_353632.jpg', 'inn_photo_2': '/media/images/inn_image_353632_2.jpg', 'inn_photo_3': '/media/images/inn_image_353632_3.jpg', 'inn_photo_4': '/media/images/inn_image_353632_4.jpg', 'inn_headline': '最上階に男女別【天然温泉】大浴場（サウナあり）を完備♪', 'inn_overview': '開業年：2007年8月大浴場：男女別天然温泉大浴場完備(10F) サウナ・露天風呂付特徴：稚内駅より徒歩約2分。アクセス抜群の立地に稚内初の最上階天然温泉。布団は羽毛。枕はソロテックスキルト立体枕。', 'inn_min_price': 3236, 'review_room': '4.4', 'review_bath': '4.4', 'review_breakfast': '4.4', 'review_dinner': '0.0', 'review_service': '4.2', 'review_cleaness': '4.5', 'rooms_total': 175, 'baths_total': 3, 'service_leisure': "['マッサージ（有料）', 'デイユース（有料）']", 'free_wifi': True, 'convenience_store': True, 'hand_towel': True, 'body_wash': True, 'hairdryer': True, 'onsui_toilet': True, 'dental_amenities': True, 'bar_soap': False, 'duvet': True, 'hair_brush': True, 'bath_towel': True, 'yukata': True, 'razor': True, 'shampoo': True, 'pajamas': False, 'shower_cap': False, 'conditioner': True, 'bathrobe': False, 'cotton_swab': True, 'category': 0}, {'id': 19, 'onsen': {'id': 5, 'onsen_id': 5, 'onsen_name': '天塩川温泉', 'onsen_name_kana': 'てしおがわおんせん', 'onsen_address': '北海道天塩郡天塩町字サラキシ５８０７', 'region': '', 'prefecture': '', 'large_area': '旭川・層雲峡', 'small_area': '名寄', 'nature_of_onsen': '炭酸水素塩泉', 'onsen_area_name': None, 'onsen_area_name_kana': None, 'onsen_area_id': 50648, 'onsen_area_caption': None}, 'vote_score': 1, 'num_vote_up': 1, 'num_vote_down': 0, 'inn_id': 319963, 'inn_name': 'はぼろ温泉サンセットプラザ', 'inn_photo': '/media/images/inn_image_319963.jpg', 'inn_photo_2': '/media/images/inn_image_319963_2.jpg', 'inn_photo_3': '/media/images/inn_image_319963_3.jpg', 'inn_photo_4': '/media/images/inn_image_319963_4.jpg', 'inn_headline': '日本海のとれたて魚介をたっぷり堪能！ビジネスの拠点にもどうぞ', 'inn_overview': '日本海の新鮮魚介を心ゆくまで堪能！露天風呂は日本庭園を模した造りとなっております。６階フロアの洋室タイプ（９部屋）を全室禁煙に増室致しました！この度、全館Wi-Fi対応となりました。', 'inn_min_price': 9629, 'review_room': '3.6', 'review_bath': '3.8', 'review_breakfast': '3.5', 'review_dinner': '3.9', 'review_service': '3.5', 'review_cleaness': '3.6', 'rooms_total': 40, 'baths_total': 6, 'service_leisure': "['マッサージ（有料）', '囲碁（有料）', 'マージャン（有料）']", 'free_wifi': True, 'convenience_store': True, 'hand_towel': True, 'body_wash': True, 'hairdryer': True, 'onsui_toilet': True, 'dental_amenities': True, 'bar_soap': False, 'duvet': True, 'hair_brush': False, 'bath_towel': True, 'yukata': True, 'razor': True, 'shampoo': True, 'pajamas': False, 'shower_cap': False, 'conditioner': False, 'bathrobe': False, 'cotton_swab': False, 'category': 1}]}
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


