# Ubuntu setup

## 初期化

https://ubuntu.com/tutorials/install-ubuntu-desktop

## セットアップ

セットアップスクリプトを実行する。

```
$ sudo apt update && sudo apt install curl git

# ssh鍵をつくり、FirefoxでGitHubに登録しておく
ssh-keygen -t ed25519 -C "hacktk3@gmail.com"

# 実行
bash -c "$(curl -fsSL https://raw.githubusercontent.com/hacktk/dotfiles_ubuntu/main/setup.sh)"
```

実行後に再起動する。

fcitx5-configtoolを起動し、Input MethodタブでMozcを追加する。
