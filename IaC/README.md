# SRE Roadmap: IaC (Terraform) Sample Code

このリポジトリは、YouTube動画「SRE実践：IaC (Terraform) でインフラをコード化する」で使用したサンプルコードです。

## 概要
SRE的なベストプラクティスに基づいた、Terraformのディレクトリ構成案を提示しています。

- **モジュール化:** 再利用可能なコンポーネント（VPCなど）を `modules/` に分離。
- **環境分離:** `environments/` 配下で、本番（production）や検証（staging）などの環境を定義。
- **DRY (Don't Repeat Yourself):** 同一のモジュールを異なるパラメータで呼び出す構成。

## ディレクトリ構成
```text
.
├── environments
│   └── production
│       ├── main.tf          # VPCモジュールの呼び出し
│       ├── outputs.tf       # 環境固有の出力
│       └── variables.tf     # 環境固有の変数
└── modules
    └── vpc
        ├── main.tf          # VPC, Subnet, IGWの定義
        ├── outputs.tf       # モジュールの出力
        └── variables.tf     # モジュールの入力変数
```

## 使い方
1. AWS CLI のセットアップが完了していることを確認します。
2. `environments/production` ディレクトリに移動します。
3. `terraform init` を実行し、プロバイダーを初期化します。
4. `terraform plan` で作成されるリソースを確認します。
5. `terraform apply` で実際にリソースを作成します。

## ライセンス
MIT License
