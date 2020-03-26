.PHONY: install
install: poetry.lock
	poetry install

poetry.lock: pyproject.toml
	poetry lock
	@ touch $@

.PHONY: run
run: install
	poetry run pomace run
