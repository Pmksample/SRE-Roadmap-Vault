# 🏗 SRE Roadmap: GitOps & CI/CD (GitHub Actions)

このディレクトリには、第 4 回「GitOps & CI/CD 実践」で使用した GitHub Actions のワークフロー設定サンプルが含まれています。

## 📄 ファイル一覧

- **[terraform.yml](./terraform.yml)**:
  - GitHub Actions で Terraform を動かすための CI/CD 定義。
  - Pull Request 時の `terraform plan` と、main ブランチマージ時の `terraform apply` を自動化します。
  - AWS OIDC 認証を使用したセキュアな接続設定例を含んでいます。

## 🚀 導入のステップ

1. `.github/workflows/` ディレクトリを作成し、`terraform.yml` を配置します。
2. GitHub の Repository Secrets に `AWS_ROLE_ARN` などを設定します。
3. クラウド側で OIDC プロバイダーと IAM ロールの信頼関係を設定します（動画での解説を参照）。

## 💡 GitOps のメリット

- **信頼性**: 手動実行によるオペレーションミス（ClickOps）を排除。
- **透明性**: 誰が、いつ、どのような変更を行ったかが PR 履歴として残る。
- **レビュー**: 変更内容をコードレビューしてから適用する文化の醸成。

---
[SRE Roadmap Vault 2026 Home](../README.md)
