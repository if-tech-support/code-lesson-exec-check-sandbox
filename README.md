![CI](https://github.com/if-tech-support/code-lesson-exec-check-sandbox/actions/workflows/ci-cd.yml/badge.svg?branch=exec-check%2Fgit%2F20261021-0915%2Flaravel-main)

## CI/CD 構成

| ブランチ | CI | CD |
|---|---|---|
| exec-check/git/20261021-0915/laravel-develop | test | skipped |
| exec-check/git/20261021-0915/laravel-main | test | skipped |
| exec-check/git/20261021-0915/laravel-staging | test | Simulate deploy |

## 使用技術

- actions/checkout@v4
- shivammathur/setup-php@v2（PHP 8.4）
- actions/cache@v5
- mysql:8.4

## Branch Protection

専用mainブランチでCI必須マージを検証し、確認後にルールを削除。失敗時のmerge拒否をAPIで確認。

## 追加した改善

ステータスバッジをREADMEに追加。サンドボックスの専用ブランチを指定。

## 実行結果

- exec-check/git/20261021-0915/laravel-main: https://github.com/if-tech-support/code-lesson-exec-check-sandbox/actions/runs/39577066501 (success)
- exec-check/git/20261021-0915/laravel-develop: https://github.com/if-tech-support/code-lesson-exec-check-sandbox/actions/runs/39577069977 (success)
- exec-check/git/20261021-0915/laravel-staging: https://github.com/if-tech-support/code-lesson-exec-check-sandbox/actions/runs/39577072729 (success)

PRトリガーの確認
