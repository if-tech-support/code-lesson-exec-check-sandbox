## CI/CD 構成

| ブランチ | CI | CD |
|---|---|---|
| develop | 実行確認済み | スキップ確認済み |
| main | 実行確認済み | スキップ確認済み |
| staging | 実行確認済み | 模擬メッセージ実行確認済み |

## 使用技術
- actions/checkout@v4
- shivammathur/setup-php@v2（PHP 8.4）
- actions/cache@v5
- mysql:8.4

## Branch Protection
実行条件で設定変更禁止のため未検証。

## 追加した改善
課題④はplanでこの回より後に配置されているため未実施。

## 実行結果
- https://github.com/if-tech-support/code-lesson-exec-check-sandbox/actions/runs/39534542411
- https://github.com/if-tech-support/code-lesson-exec-check-sandbox/actions/runs/39534634776
- https://github.com/if-tech-support/code-lesson-exec-check-sandbox/actions/runs/39534744921

## 自己評価
- [x] MySQLでmigrateとテストが成功
- [x] PR作成でCIが実行
- [ ] Branch protectionによるマージ制限（設定変更禁止）
- [x] stagingでのみ模擬CD、main/developではskip
- [ ] 課題④の改善が動作（後続に配置）
- [x] READMEへ実行範囲を記録
