# テーブル設計

## users テーブル

| Column              | Type   | Options                   |
| ------------------- | ------ | ------------------------- |
| nickname            | string | null: false               |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |

### Association
- has_many :phrases
- has_one  :room



## phrases テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| phrase              | string     | null: false                    |
| tag_id              | integer    | null: false                    |ActiveHash
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :tag



<!-- ## roomsテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user_id          | references | null: false, foreign_key: true |
| item_id          | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one    :address

 -->

<!-- ## addresses テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| postal_code      | string     | null: false                    |
| municipalities   | string     | null: false                    |
| street_number    | string     | null: false                    |
| building_name    | string     |                                |
| phone_number     | string     | null: false                    |
| prefecture_id    | integer    | null: false                    |ActiveHash
| order_id         | references | null: false, foreign_key: true |

### Association
- belongs_to :order
- belongs_to :prefectures_activehash



## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association
- belongs_to :room
- belongs_to :user


 -->
