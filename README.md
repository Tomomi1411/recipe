# テーブル設計

## users テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| username         | string  | null: false |
| profile          | text    | null: false |
| email            | string  | null: false |
| password         | string  | null: false |

### Association

- has_many :gourmets

## gourmets テーブル

| Column        | Type       | Options                       |
| ------------- | ---------- | ----------------------------- |
| user_id       | string     | null: false                   |
| title         | string     | null: false                   |
| body          | text       | null: false                   |

- belongs_to :user