# Animals-Domi
![](https://user-images.githubusercontent.com/65533226/94780406-586ec700-0403-11eb-8fe7-0e0071ae4b3c.png)


# 制作物URL
https://roteger-les-animaux.herokuapp.com/


# サイトテーマ・概要
現在起きている動物・環境の問題や現実を誰でも自由に簡単に投稿ができます。そのテーマを元に登録者が自由にメッセージをやりとりしたり、
実際に何が起きているのか、知っていただこと・共有できます。


## テーマを選んだ理由
絶滅危惧種になっている動物やその原因になっている環境の変化のことを知っている方が少ないと感じています。
営業時代の際にNGO・NPO団体と携わるお仕事をしていて、団体の職員の方もまだまだ現状を知っている方が少ないのが問題と
仰っていました。個人的には、動物が好きなので現状を知っている方が知らない方達に共有できるようなスペースがあればと思い、
作りました。人間が豊かになればその分犠牲があると思います。それが動物達だと思うので豊かになった分、動物や環境に還元
することができればなと考えています。


# 使い方
## 1, 簡単ログインでログインでき、投稿のところで必要な記載をして投稿できます。
![demo](https://gyazo.com/3473363d2160602cbea5e7aee26eb0ff/raw)


## 2, 投稿したら詳細画面でメッセージでやりとりできます
![demo](https://gyazo.com/e2f300853ec7d19273aff282a411bc7e/raw)


## 3, 機能
- ユーザー登録・ログイン機能（devise）
- 投稿機能(投稿詳細表示、投稿編集、投稿削除、投稿一覧表示)
- 投稿へのコメント機能（Ajax）
- 画像アップロード(defile)
- 検索機能
- いいね機能（Ajax）
- フォロー・フォロワー機能(Ajax)
- ページネーション機能（Kaminari）
- プロフィール表示機能
- レスポンシブデザイン


# 環境・使用技術　

## フロントエンド
- Scss(BEM)
- JavaScript(ライブラリ: swiper)
- jquery(Ajax)


## バックエンド
- Ruby 2.5.8
- Rails 5.2.4


## 開発環境
- Docker/Docker-compose
- Postgresql


## 本番環境
- Heroku(デプロイ)
- AWS(S3)
- Travis.ci
- Postgresql


# インフラ構成図
![](https://user-images.githubusercontent.com/65533226/94891956-6e8d8d80-04be-11eb-8ed2-4acc08f7c872.png)

# ER図
![](https://user-images.githubusercontent.com/65533226/94891930-587fcd00-04be-11eb-98cd-05d0d6f132c3.png)
](url)
