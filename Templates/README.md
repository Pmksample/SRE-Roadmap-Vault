# 🩹 SRE Roadmap: Templates

このディレクトリには、SRE の「仕組み（Vault）」を構築するための各種テンプレートが含まれています。

## 📄 テンプレート一覧

### 1. 🏗️ IaC & GitOps
- **[IaC_Terraform_Structure/](./IaC_Terraform_Structure/)**:
  - SRE 標準の Terraform ディレクトリ構成案。
  - Environments (production) と Modules (vpc) の分離、宣言的なインフラ管理を実現します。
- **[GitOps_GitHub_Actions/](./GitOps_GitHub_Actions/)**:
  - GitHub Actions を使用した自動デプロイ（CI/CD）のワークフロー定義 (`terraform.yml`)。
  - OIDC を使用した安全なクラウド認証に対応。

### 2. 🩹 インシデント管理 & ポストモーテム
- **[Postmortem_Template.md](./Postmortem_Template.md)**:
  - 障害（インシデント）を「ギフト」に変えるための責めないポストモーテム・テンプレート。
  - 発生事象、タイムライン、根本原因（5 Whys）、再発防止策（Action Items）を網羅しています。

## 🛠 使い方

1. 自分のプロジェクトの要件に合わせて、これらのディレクトリやファイルをコピーして使用してください。
2. インシデントが発生した際は、`Postmortem_Template.md` を使って「責めない分析」を行い、システムを強化します。
3. 目的は、技術的な「記憶」を「記録」に変え、再現性と信頼性を担保することです。

---
[SRE Roadmap Vault 2026 Home](../README.md)
