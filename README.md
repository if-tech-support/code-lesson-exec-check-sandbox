# CI/CD 学習記録

## CI/CD 構成

| 教材ブランチ | sandbox上の代替 | CI | CD |
|---|---|---|---|
| main | exec-check/git/20261021-0430/laravel-main | PHP 8.4/8.5 matrix | skip |
| develop | exec-check/git/20261021-0430/laravel-develop | PHP 8.4/8.5 matrix | skip |
| staging | exec-check/git/20261021-0430/laravel-staging | PHP 8.4/8.5 matrix | テスト後echoのみ |

## 使用技術

- actions/checkout@v4: コード取得
- shivammathur/setup-php@v2: PHP 8.4 / 8.5
- actions/cache@v5: vendorをlockハッシュとPHP版別でキャッシュ
- mysql:8.4: 一時DBサービス
- Laravel 12 / Composer 2

## Branch Protection

実行チェックの制約で設定変更は禁止。CI必須マージの効果は未検証。

## 追加した改善

B: PHP 8.4と8.5のmatrix。2版でテストし、キャッシュキーにPHP版も加える。

## 実行結果

- exec-check/git/20261021-0430/laravel-main: success — https://github.com/if-tech-support/code-lesson-exec-check-sandbox/actions/runs/39546120197
  ジョブ: test (8.5)=success, test (8.4)=success, deploy=skipped
- exec-check/git/20261021-0430/laravel-develop: success — https://github.com/if-tech-support/code-lesson-exec-check-sandbox/actions/runs/39546226468
  ジョブ: test (8.5)=success, test (8.4)=success, deploy=skipped
- exec-check/git/20261021-0430/laravel-staging: success — https://github.com/if-tech-support/code-lesson-exec-check-sandbox/actions/runs/39546347986
  ジョブ: test (8.5)=success, test (8.4)=success, deploy=success

## 自己評価

- [x] CIと模擬CDのブランチ別動作を実行ログで確認
- [ ] 認証済みブラウザ画面: ログイン禁止で未検証
- [ ] Branch Protection: 設定変更禁止で未検証
- [ ] 本番へのデプロイ: 実施せず
