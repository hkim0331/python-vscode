# python-vscode for mac/windows

## Unreleased
- 名前 install-mac, install-win は変か？
- install-linux.md も必要か？


## 0.1.4 - 2022-03-07
### Changed
- install-windows.md: JupyterLab のインストールも含める。
### Added
- start-jupyter.bat
- start-jupyter.sh, mac ではスタートしても ubuntu ではスタートしない理由はなんだ？

## 0.1.3 - 2022-03-05
### Added
- pip install numpy, matplotlib in .devcontainer/Dockerfile.

## 0.1.3 - 2022-03-07
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
