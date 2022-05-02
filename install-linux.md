# python/vscode for Chromebook/Linux

UNDER CONSTRUCTION

Windows users should go `install-windows.md`.
MacOS users should go `install-macos.md`.

## Install

1. open terminal
2. `make local`
3. `code .`
4. install `Python(Pylance)` extension
5. open `plot-sample.ipynb`
6. choose `suggested kernel` (right upper of VScode window)
7. run

## optional(Remote Container)

1. `make remote` on your terminal
2. Reopen in Container from left botton corner of VScode window
3. Choose Python3

## Uninstall

1. open terminal
2. `make uninstall`

Other applications depend on Python3, Python3 remains installed even if
you execute the above script.

## NOTE

DEPRECATION: Configuring installation scheme with distutils config files is deprecated and will no longer work in the near future. If you are using a Homebrew or Linuxbrew Python, please see discussion at https://github.com/Homebrew/homebrew-core/issues/76621
