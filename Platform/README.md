# 🛠 Platform Engineering (Backstage) Introduction Checklist

このディレクトリは、YouTube動画「[SRE実践 #7：Platform Engineering 入門]([YouTube プレイリスト URL])」で紹介した、内部開発プラットフォーム（IDP）の導入と Backstage の活用を支援するためのチェックリストです。

## 🎯 導入の目的
- 開発者の **認知負荷 (Cognitive Load)** を下げる。
- 誰かの作業を待つ **待ち時間 (Waiting Time)** をゼロにする。
- 組織の標準に沿った **ゴールデンパス (Golden Path)** を提供する。

---

## ✅ Backstage / IDP 導入チェックリスト

### 1. 準備・現状分析 (Discovery)
- [ ] **現在の「待ち時間」の可視化**: 環境構築や権限申請に平均何日かかっているか？
- [ ] **ドキュメントの所在確認**: Wiki, README, Notion などに情報が散散していないか？
- [ ] **プロセスの棚卸し**: 手動で行っている「定型作業」は何か？

### 2. IDP の 3 つの柱の設計 (Architecture)
- [ ] **セルフサービス**: 開発者が「自分で」実行できる範囲を定義したか？
- [ ] **抽象化**: Terraform や Helm の複雑さを、テンプレートで隠蔽できているか？
- [ ] **ゴールデンパス**: セキュリティと監視が「最初から」入った雛形を用意したか？

### 3. Backstage のセットアップ (Pilot)
- [ ] **Software Templates**: 1クリックで「Hello World」がデプロイできるテンプレート。
- [ ] **Service Catalog**: 全てのコンポーネントの所有者と依存関係を登録。
- [ ] **TechDocs**: `docs/` 配下の Markdown が自動でポータルに統合される設定。

### 4. 組織への浸透 (Onboarding)
- [ ] **「使わない自由」を認める**: ゴールデンパスは強制ではなく「楽な道」として提示する。
- [ ] **初期ユーザーのフィードバック**: 少数のチームで PoC を行い、不便な点を改善したか？

---

## 🏗️ デモ環境の起動 (Optional)

このディレクトリにある `docker-compose.yml` を使用して、Backstage のインターフェースを体験できます。

```bash
docker-compose up -d
```
- アクセス: [http://localhost:3000](http://localhost:3000)
- ※起動には 1~2 分かかる場合があります。
- ※これは UI デモ用の最小構成です。

---
## 🌿 Quiet Growth
インフラの複雑さを「仕組み」で隠蔽し、開発者が純粋に価値創出に集中できる環境を。
静かに、しかし確実に組織の生産性を底上げしていきましょう。

[SRE Roadmap Vault 2026 Home](../README.md)
