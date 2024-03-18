#!/usr/bin/env sh

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install python@3.12

if [ ! -f ".venv"]; then
	echo "Setting up virtualenv"
	python3 -m venv .venv
fi

source .venv/bin/activate
pip --require-virtualenv install -r requirements.txt
