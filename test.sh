#!/bin/sh
python manage.py collectstatic --noinput && \
pytest --ds=config.settings.test --cov=test_aws --capture=no --nomigrations --cov-config=.coveragerc -n=2 $@ && \
flake8 . --exclude=migrations --exclude=venv --max-line-length=100 && \
if [ "$CODECOV_REPO_TOKEN" != "" ]; then \
   codecov --token=$CODECOV_REPO_TOKEN ;\
fi
