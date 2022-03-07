rem すでにインストール済みなら上書きインストールはしない。
rem python さえインストール済みならこれが一番楽か。
rem rem をつけさす方がいいだろな。
py -m pip install --no-cache-dir -r requirements.txt
py -m jupyter lab
