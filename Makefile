PROJECT_NAME ?= basic-bank
CONDAENV_NAME ?= $(PROJECT_NAME)
CONDAENV_BIN_PATH ?= $$(conda info --base)/envs/$(CONDAENV_NAME)/bin

export PYTHONPATH := .

# ===== Environment =====
env-create:
	conda create -n $(CONDAENV_NAME) -y \
		python=3.12 \
		pip=24
	$(CONDAENV_BIN_PATH)/python -m pip install uv

env-install:
	$(CONDAENV_BIN_PATH)/python -m uv pip install -r requirements-dev.txt
	$(CONDAENV_BIN_PATH)/pre-commit install --hook-type pre-commit
	@echo "#\n# To activate this environment, use:\n#\n#\t$$ conda activate $(CONDAENV_NAME)"
	@echo "#\n# To deactivate an active environment, use:\n#\n#\t$$ conda deactivate"

env-remove:
	conda remove -n $(CONDAENV_NAME) --all -y

env-update:env-remove env-create env-install


#===== Run App =====

run:
	cd $(PROJECT_NAME) && ./run.sh


# ===== Test =====

pytest:
	rm -f .reports/coverage*
	coverage run -m pytest -x -vv -W ignore::DeprecationWarning
	coverage combine
	coverage xml
	coverage html
	coverage report


# ===== Format =====

format:
	set -x
	ruff check $(PROJECT_NAME) --fix
	ruff format $(PROJECT_NAME)

lint:
	set -e
	set -x
	mypy $(PROJECT_NAME)
	ruff check $(PROJECT_NAME)
	ruff format $(PROJECT_NAME) --check
