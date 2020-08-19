# Infra

ISUCON用のインフラを一撃で立てたい人が集まるリポジトリ

## instance

### 準備: credential file

terraformを実行するにたり、IAM Accountからcredential fileを取得する必要があります。
今回用に、インスタンス管理だけに絞ったサービスアカウントを以前作ったので、そこに紐づいた新しいキーを生成する必要があります

1. Google Cloud PlatformのConsole画面から「IAMと管理」 > 「サービスアカウント」へアクセスする
2. name: `isucon-terraform` を選択し、鍵を追加する

### raw-instance

生のインスタンスを立ち上げる。基本的にこの設定をベースにしている。

```bash
cd raw-instance
terraform init
terraform apply -var "credential_file=***" -var "name=***"
```

### go-docker-instance

git、make、docker、go がインストール済みのインスタンスを立ち上げる。初期化スクリプト(setup.sh)を修正すれば、他のコマンドやミドルウェアを追加できる。

```bash
cd go-docker-instance
terraform init
terraform apply -var "credential_file=***" -var "name=***"
```
