# Python/VScode の環境を作る

Mac ユーザは README-mac.md へ。

## インストール

1. python を以下の URL からダウンロード、インストールする。
https://www.python.org/downloads/

2. VScode を以下の URL からダウンロード、インストールする。
https://code.visualstudio.com/

3. このフォルダを右クリックして、`windows ターミナルで開く` を選ぶ。

4. `code .` の後にエンター。

5. EXTENSIONS を選び、検索窓に python をタイプ、
   一番上の方に見つかる `Python(Pylance)` の install ボタンをクリック。

6. VScode の Explorer にある `sample-plot.ipynb` をクリック、
7. ウィンドウ右上の方、`Python 3.10.2 64bit` を選択。
8. 上から順にセル上でカーソルをクリック、シフトエンターしてみる。
9. プログラムを書き換えてシフトエンターしてみる。

### numpy, matplotlib が見つからない？

VScode, Terminal, New Terminal でターミナルを開き、

    > py -m pip --no-cache-dir -r requirements.txt

### アンインストール

スタート、設定、アプリ、アプリと機能を選んで、以下を削除する。

* Microsoft Visual Studio Code(User)
* Python 3.10.2
* Python Launcher

## 進んだ人に(Remote WSL)

コンテナで動かすのが流行り。
ただ、Windows では DockerDesktop が調子よくないってウワサもちらほら。
この際、WSL で動かしてみよう。

1. windows ターミナルを開く。
2. `wsl --install -d Ubuntu`
3. VScode を立ち上げ、EXTENTIONS から `Remote WSL` をインストールする。
4. VScode の左下隅、小さい緑ボタンをクリック `Reopen Folder in WSL` を選択。
5. `sample-plot.ipynb` を開く。
6. シフトエンターで numpy、matplotlib が見つからないメッセージが来たら、
   VScode のターミナルから、
  `make requiremens`
7. 再度、import ... を評価する。

### WSL をアンインストール

スタート、設定、アプリ、アプリと機能を選んで、以下を削除する。

* Ubuntu
* Windows Subsystem for Linux Update
