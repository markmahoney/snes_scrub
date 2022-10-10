build: venv
	source .venv/bin/activate; python -m build --sdist --wheel

clean: venv
	source .venv/bin/activate; python setup.py clean --all
	find build ! -name '.gitkeep' -type f -exec rm -f {} +
	find dist ! -name '.gitkeep' -type f -exec rm -f {} +
	-rm -r src/snes_scrub/__pycache__
	-rm -r src/snes_scrub.egg-info

release: venv build
	source .venv/bin/activate; twine upload dist/*

install-dev:
	python3 -m pip install -e .

venv: venv/bin/activate

venv/bin/activate: requirements.txt
	test -d .venv || python3 -m venv .venv
	source .venv/bin/activate; pip install -Ur requirements.txt
