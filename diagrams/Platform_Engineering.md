# 「SRE実践：Platform Engineering 入門」図解 (Mermaid)

このファイルは、YouTube 動画「【SRE実践 #7】Platform Engineering 入門」で使用された図解を Mermaid 形式で集約したものです。

## 1. SRE と Platform Engineering の違い
### 「魚を与える」か「釣り竿と池を整備する」か
```mermaid
graph TD
    subgraph "従来型 (SRE focus)"
        SRE_M[SRE Team] -->|1. 手動構築 / チケット対応| Cloud_M[Cloud Infrastructure]
        Dev_M[Product Developers] -->|2. 構築依頼 (Ticket)| SRE_M
    end
    
    subgraph "Platform Engineering (IDP focus)"
        PE_Team[Platform Team] -->|1. Build & Maintain| IDP[Internal Developer Platform / IDP]
        Dev_PE[Product Developers] -->|2. セルフサービス / 1-click| IDP
        IDP -->|3. 自動プロビジョニング| Cloud_PE[Cloud Infrastructure]
        SRE_PE[SRE Team] -->|4. ガードレール / ポリシー策定| IDP
    end
    
    style IDP fill:#f9f,stroke:#333,stroke-width:4px
    style SRE_PE fill:#e1f5fe,stroke:#01579b
    style PE_Team fill:#e8f5e9,stroke:#2e7d32
```

## 2. 開発者の認知負荷 (Cognitive Load) の削減
### Before (チケット駆動) vs After (セルフサービス)
```mermaid
graph LR
    subgraph "Before: 認知負荷が高い状態"
        Dev_B[開発者] -->|依頼| Ticket[チケット/Jira]
        Ticket -->|待ち時間: 数日| SRE_B[SRE]
        SRE_B -->|手動作業| Env_B[環境構築完了]
        Note_B[「待ち」と「文脈の断絶」が発生]
    end
    
    subgraph "After: 認知負荷が低い状態 (Golden Path)"
        Dev_A[開発者] -->|ポータル操作| IDP_A[IDP / Backstage]
        IDP_A -->|自動実行: 数分| Env_A[環境構築完了]
        Note_A[コードを書くことに集中できる]
    end
    
    style Ticket fill:#ffcdd2,stroke:#c62828
    style IDP_A fill:#c8e6c9,stroke:#2e7d32
```

## 3. Platform Engineering の 3 つの柱
### セルフサービス、抽象化、ゴールデンパス
```mermaid
mindmap
  root((Platform Engineering))
    セルフサービス
      ポータル (Backstage)
      カタログ化
      API / CLI
    抽象化
      K8sの隠蔽
      Terraformモジュール
      標準テンプレート
    ゴールデンパス
      ベストプラクティス
      自動化されたガードレール
      セキュリティの組み込み
```

## 4. SRE と Platform Team の協調関係
### 信頼性とスピードの両立
```mermaid
graph LR
    SRE[SRE Team] -- "安定性・信頼性の基準" --> IDP((Internal Developer Platform))
    PE[Platform Team] -- "使いやすさ・自動化" --> IDP
    Dev[Developers] -- "高速デプロイ" --> IDP
    IDP -- "フィードバック" --> PE
    IDP -- "メトリクス" --> SRE
    
    style IDP fill:#fff9c4,stroke:#fbc02d,stroke-width:2px
```

---
[SRE Roadmap Vault 2026 Home](../README.md)
