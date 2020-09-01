# README

## Name(アプリ名,紹介文)
アプリ名：FindSelf
紹介文：自分探しを手助けするためのアプリです。

## DEMO(デモ動画、図解)
自由にオリジナルのプロフィールを作ることができます。
自己分析テストを受けることで、プロフィール作成に活かせます。
他のユーザーのプロフィールをお気に入り登録できます。

## Features(特徴)

## Requirement(必要なライブラリ)

## Installation(ライブラリのインストール方法)

## Usage(基本的な使い方)

## Note(注意点)

## Author(作成情報)

## License(ライセンス)

## DB design(DB設計)
### users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| username           | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| profile_id         | int    | null: false, foreign_key: true |

#### Association

- has_one :profile
- has_many :likes
- has_many :comments

### profiles テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| cover_image        | string | null: false, default |
| profile_image      | string | null: false, default |
| introduction       | string | null: false, default |
| career             | string | null: false, default |
| related_link       | string | null: false, default |
| attached_file      | string | null: false, default |
| basic_id           | int    | null: false, foreign_key: true |

#### Association

- belongs_to :user
- has_many :likes
- has_many :comments
- has_one :basic

### comments テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user_id            | int    | null: false, foreign_key: true |
| profile_id         | int    | null: false, foreign_key: true |

#### Association

- belongs_to :user
- belongs_to :profile


### likes テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user_id            | int    | null: false, foreign_key: true |
| profile_id         | int    | null: false, foreign_key: true |

#### Association

- belongs_to :user
- belongs_to :profile

### basics テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| birthplace         | string ||
| birthday           | string ||
| blood_type         | string ||
| sex                | string ||

#### Association

- belongs_to :profile
