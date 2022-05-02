# python-vscode for mac/windows

## Unreleased
- install-linux.md も必要か？ pip install だけじゃできねーぞ。
- wget で済ます


## 0.1.5 - 2022-03-07
### Added
- git pre-hook 今度こそ成功。
  これは m1 や m3 など、commit の可能性のあるホストに入れとかないと。
  don't forget `git init` after updating git hooks.
```sh
  if [ -n "`bin/clear-output.sh src/*.ipynb`" ]; then
    echo "clear-output.sh error"
    exit 1
  fi
```
### Fix bugs
- bin/*.sh
  ${i##*.} = 'ipynb' でファイル $i の拡張子が ipynb であるかを確かめた。

## 0.1.4 - 2022-03-07
### Changed
- install-windows.md: JupyterLab のインストールも含める。
### Added
- start-jupyter.bat
- start-jupyter.sh, mac ではスタートしても ubuntu ではスタートしない理由はなんだ？

## 0.1.3 - 2022-03-07
### Added
- pip install numpy, matplotlib in .devcontainer/Dockerfile.
### Checkme
- windows/wsl からプッシュしてみた。反映していない。

## 0.1.2 - 2022-03-03
### Fix a bug
- order of parameters of function pdf().

## 0.1.1 - 2022-03-03
### Added
- src/histogram.ipynb
- src/sine-curve.ipynb
- README.md

## 0.1.0 - 2022-03-03
### Reborn
出直し。リポジトリごと消して、同じ名前で上書き。
mac/windows の README を分ける。サンプルは一緒でいい。

* 普通のユーザはローカルな Python を使うだろう。
* 進んだユーザは Docker/WSL 使うのもいいだろう。
