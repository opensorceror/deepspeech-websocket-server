SRC_DIR?=deepspeech_server

pytest:
	pylint ${SRC_DIR}
	python -m pytest -p pytest_cov --cov=deepspeech_server --cov-report=xml --cov-report=term \
		  --junitxml=pytest-report.xml tests/test_app.py
