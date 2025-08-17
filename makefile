venv_python3 = .venv/bin/python3

all:
	$(venv_python3) src/main.py

run:
	$(venv_python3) src/main.py

venv_full_setup:
	make venv_create
	make venv_install

venv_create:
	python3 -m venv .venv

venv_clean:
	rm -rf .venv

venv_install:
	$(venv_python3) -m pip install -r requirements.txt
