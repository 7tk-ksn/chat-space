# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

## groups_usersテーブル  

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## usersテーブル  

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|integer|null: false|
|user_name|string|null: false|


### Association
- has_many :groups_users
- has_many :messages
- has_many :groups, through: :groups_users


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|string|null: false, foreign_key: true|
|group_id|string|null: false, foreign_key: true|
|text|string|null: false|
|image|string|null: false|

### Association
- belongs_to :group
- belongs_to :user

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false, unique: true|

 ### Association
 - has_many :users through: groups_users
 - has_many :messages
 - has_many :group_user



* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
