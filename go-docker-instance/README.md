# Go Docker Instance

Git、Go、Dockerインストール済みのISUCON用インスタンスを立てるやーつ

## Quick Start

credential file のパスと立てるインスタンスの名前を指定する必要がある。名前がかぶると既存のインスタンスが更新されてしまうので注意。

```
$ terraform init
$ terraform apply -var 'name=***' -var 'credential_file=***'
```

credential file は作ったのでどうにかして共有する。

## Internal

インスタンスが起動してからスクリプトが走るのでGitなどが使えるようになるまで少し時間がかかる。

## Disk

とりあえずこんだけあれば十分であろう20GBに設定している。

```tf
boot_disk {
    auto_delete = true
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
      size = 20
      type = "pd-standard"
    }
  }
```
