.PHONY: build test typecheck clean

build:
	poetry install

test:
	python -c "import aw_client"
	pytest -s -vv tests/test_requestqueue.py

typecheck:
	MYPYPATH="${MYPYPATH}:../aw-core" mypy aw_client

clean:
	rm -rf build dist
	rm -rf aw_client/__pycache__
