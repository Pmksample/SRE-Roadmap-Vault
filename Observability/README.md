# 📈 SRE Roadmap: Observability & Monitoring

このディレクトリには、第 5 回「Grafana によるオブザーバビリティ入門」で使用したデモ環境の構成が含まれています。

## 📁 ディレクトリ構成

- **[docker-compose.yml](./docker-compose.yml)**: Prometheus と Grafana を起動するための設定ファイル。
- **[prometheus/](./prometheus)**: Prometheus の設定ファイル (`prometheus.yml`)。
- **[grafana/](./grafana)**: Grafana のデータ保存先（初期設定後は自動生成）。

## 🚀 使い方

1. Docker がインストールされていることを確認します。
2. このディレクトリで以下のコマンドを実行します。
   ```bash
   docker-compose up -d
   ```
3. ブラウザでアクセスします。
   - Grafana: [http://localhost:3000](http://localhost:3000) (初期 ID/PW: `admin`/`admin`)
   - Prometheus: [http://localhost:9090](http://localhost:9090)

## 🎨 4つのゴールデンシグナル

動画で解説したように、以下のメトリクスを可視化することをおすすめします。
1. **Latency (レイテンシ)**: リクエストにかかる時間。
2. **Traffic (トラフィック)**: 単位時間あたりのリクエスト数。
3. **Errors (エラー)**: 失敗したリクエストの割合。
4. **Saturation (飽和度)**: リソース（CPU/メモリ）の余力。

---
[SRE Roadmap Vault 2026 Home](../README.md)
