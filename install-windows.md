# Python/VScode の環境を作る

Mac ユーザは `install-macos.md` へ。

利用開始するまでの方法は複数あって、

1. ブラウザで python できるように
2. VScode で python できるように
3. VScode の WSL 機能拡張使って python できるように

おすすめは 2 または 3 です。

## インストール１

1. python を以下の URL からダウンロード、インストールする。
https://www.python.org/downloads/

2. このフォルダを右クリックして、`windows ターミナルで開く` を選び、
   ターミナル上から、

    > py -m pip --no-cache-dir -r requirements.txt

3. 続いて、

   > jupyter lab

4. ブラウザが開き、Jupyter Lab の画面になる。
   Notebook から Python3(ipykernel) を選んで python 開始。


## インストール２

インストール１を済ませておく。

1. VScode を以下の URL からダウンロード、インストールする。
https://code.visualstudio.com/

2. このフォルダのアイコンを右クリック、`windows ターミナルで開く` を選んで、

   > code .

   code の後ろにスペース、ドット(.) そしてエンターだよ。

3. VScode の EXTENSIONS を選び、検索窓に python をタイプ、
   一番上の方に見つかる `Python(Pylance)` の install ボタンをクリック。

4. VScode の Explorer にある `sample-plot.ipynb` をクリック、
5. ウィンドウ右上の方、`Python 3.10.2 64bit` を選択。
6. 上から順にセル上でカーソルをクリック、シフトエンターしてみる。
7. プログラムを書き換えてシフトエンターしてみる。
8. VScode の機能を存分に利用してプログラミングしてみよう。
   関数名の上にカーソルを乗せると、関数の説明が現れる。英語だけどね。

## インストール３

コンテナが流行り。
ただ、Windows では DockerDesktop が調子よくないってウワサもちらほら。
この際、WSL で動かしてみよう。

1. windows ターミナルを開いて、
    > wsl --install -d Ubuntu
   インストール終わったらターミナルは閉じていい。
2. このフォルダを右クリック、新たにターミナル開けて、
   > code .
3. VScode が立ち上がるので、EXTENTIONS から `Remote WSL` をインストールする。
4. VScode の左下隅、小さい緑ボタンをクリック `Reopen Folder in WSL` を選択。
5. `sample-plot.ipynb` を開く。
7. セルをクリック、シフトエンターで評価する。

### アンインストール

スタート、設定、アプリ、アプリと機能を選んで、以下を削除する。

* Microsoft Visual Studio Code(User)
* Python 3.10.2
* Python Launcher

WSL をアンインストールするには、以下を削除する。

* Ubuntu
* Windows Subsystem for Linux Update
