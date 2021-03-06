#!/bin/bash

fw_depends pypy2

pip install --install-option="--prefix=${PYPY2_ROOT}" -r $TROOT/requirements-pypy.lock

gunicorn app:app -c gunicorn_conf.py &
