# NearBuy

## 欲しいものが買える場所、教えます。

NearBuy は、「今すぐ欲しい商品がお店で見つからない！」問題を解決したい、
- 期間限定商品
- 需要に対して供給が少ない商品
- そもそも需要が少ない商品
を、いち早く手に入れたい方向けのサービスです。

このサービスは、利用者が欲しい商品を検索すると、事前に他の利用者が登録した近くの店舗の在庫量
（十分：○、少なめ：△、売り切れ：×、未登録：？）を表示することで、利用者がネットショッピングよりも早く
今欲しいものを購入することをサポートします。

## Setup

### Requirements

  - sqlite3 (development, test)
  - postgresql (production)

### Get Started

```console
$ git clone git@github.com:enpitut2017/near-buy.git
$ bundle install
$ bundle exec rails server
```
