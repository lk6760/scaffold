install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-aws:
	pip install --upgrade pip &&\
		pip install -r requirements-aws.txt

install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

test:
	python -m pytest -vv --cov=hello test_hello.py

format:
	black *.py

lint:
	pylint --disable=R,C hello.py
	
all: install lint test