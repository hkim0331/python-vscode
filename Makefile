all:
	@echo '`make local` creates local python/vscode environment.'
	@echo '`make remote` creates remote container environement.'

local: brew python vscode requirements

# remote するくらいの人は requirements くらい自分でインストールするさ。
remote: brew vscode docker

brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

python:
	brew install python3

requirements:
	/usr/local/bin/pip install --no-cache-dir -r requirements.txt

docker:
	brew install --cask docker

vscode:
	brew install --cask visual-studio-code

# if uninstall python3, use `--force` on your own risk.
# for other casks depends on pytho3.
uninstall: uninstall-docker uninstall-vscode

uninstall-python3:
	brew uninstall python3

uninstall-docker:
	brew uninstall docker

uninstall-vscode:
	brew uninstall visual-studio-code
	mv ${HOME}/.vscode ${HOME}/.vscode-`date +%F`

# utilities
src/%.py: src/%.ipynb
	jupyter nbconvert --to python $<
