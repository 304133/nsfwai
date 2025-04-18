@echo off
:: 仮想環境の有無を確認して起動
set PYTHON=python
set GIT=git

:: 仮想環境に入ってない場合は自動的に作る（初回のみ）
if not exist venv (
    %PYTHON% -m venv venv
)

call venv\Scripts\activate.bat

:: ライブラリがなければインストール
pip install -r requirements.txt

:: 起動
python launch.py --xformers --api --enable-insecure-extension-access

