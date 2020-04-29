# WineSo

## 概要
- ワイン販売アプリ

## コンセプト
- ワイン販売アプリとスタートし、理想的にはワイン好きが集まる場所にしたい。

## 背景
- ワインコレクターの為の嗜好の共有（販売）手段として使って頂きたい。
- 愛好家はそれぞれのユニークな調達手段を持つが共有手段が限られている。その幅を広げ自分の嗜好を共有、新しい味に出会う機会を増やし、新発見、感動、仲間との出会いからより交流が生まれる。より飲食も楽しくなると思いこのアプリケーション作りに挑戦しようと思った。

## バージョン情報
- Ruby 2.6.5
- Ruby on Rails 5.2.4.2
- PostgreSQL 12.1
- Bootstrap 4.1.1

## 機能一覧
- [ ] ログイン機能
- [ ] ユーザー登録機能
  - [ ] メールアドレス、名前、パスワードは必須
- [ ] マイページ
  - [ ] 登録内容変更
  - [ ] 購入履歴閲覧
  - [ ] アドレス帳編集
  - [ ] クレジットカード情報編集
- [ ] ワイン一覧表示機能
  - [ ] アドミ権限で各編集可能
  - [ ] アドミ権限で各タグ付け外し可能
  - [ ] ワイン詳細・購入ページ
    - [ ] ワイン購入、本数指定、宛先に応じ送料明記、合計算出
    - [ ] 銀行振込或いはカード決済選択
    - [ ] ワイン詳細
    - [ ] コメント・５段階ランク付け可能
    - [ ] ワイン、お気に入り登録・解除
- [ ] 検索機能
  - [ ] キーワードであいまい検索
  - [ ] タグでも検索可能
- [ ] クレジットカード登録・使用機能
  - [ ] ユーザーと紐付け
- [ ] Eメール機能
  - [ ] 販売後確認メール送付
  - [ ] 問合せ対応
  - [ ] 宣伝メール送付

## カタログ設計
https://docs.google.com/spreadsheets/d/e/2PACX-1vQYY_fhi2NDMKUM94uBW9XdFZ3ij5v-bFGs5DlTrFCrPhuqlPpINVfpRcfGzwkgeSzWqPwXiBzvgiiK/pubhtml

## テーブル定義
https://docs.google.com/spreadsheets/d/e/2PACX-1vRN_KtNllzMLFAgWTP61iK2Eqfpycz2s6Z99CWi4JoTHU6Bf9XcCnMcbQymh0JE8k1u1c3uHQNGas32/pubhtml#

## ER図
https://docs.google.com/document/d/e/2PACX-1vRin04yDScZNAEqk8voIUm50IwMzvFbzLakO-9hEEtrPW3HRmGd-zQhmFBMjePshiiDIzz0PDx9b7dK/pub

## 画面遷移図
https://docs.google.com/document/d/e/2PACX-1vSwOQGvx7qjUCF4UFKW-a3l5EAukIpA2y8-wkCme4BMkDSV5DRoFnOircpgIG9Y5pxjzEwUzhRz6HO7/pub

## ワイヤーフレーム
https://docs.google.com/document/d/e/2PACX-1vT96j6JrP8uKNGbRXSMGzVrqzorvfvmXSCpesgmnPhr8lssT9ek6ED57t8NBc9BMeIu_XrCuKW8wUaH/pub

## 使用予定Gem
- devise
- rails-i18n
- devise-i18n
- carrierwave
- minimagick
- faker
- jquery-turbolinks
- payjp
- ransack
- font-awesome-sass
- kaminari
- kaminari-bootstrap
- fog-aws
- bcrypt
- letter_opener
- letter_opener_web
- rspec-rails
- spring-commands-rspec
- factory_bot_rails
- launchy
- capybara
- webdrivers
