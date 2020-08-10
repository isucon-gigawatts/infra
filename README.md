# Infra

ISUCON用のインフラを一撃で立てたい人が集まるリポジトリ

## instance

### raw-instance

生のインスタンスを立ち上げる。基本的にこの設定をベースにしている。

### go-docker-instance

git、make、docker、go がインストール済みのインスタンスを立ち上げる。初期化スクリプト(setup.sh)を修正すれば、他のコマンドやミドルウェアを追加できる。
