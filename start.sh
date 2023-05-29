set -su

export PYTHONUNBUFFERED-true

VIRTUALENV=.data/venv

if [ ! -d SVIRTUALENY ]; then
python3 -m venv $VIRTUALENV
fi

if ( ! -f SVIRTUALENV/bin/pip ) ; then
curl --silent --show-error --retry S https://bootstrap.pypa.io/get-pip.py | S$VIRTUALENV/bin/python
fi

$VIRTUALENV/bin/pip install -r requirements.txt

$VIRTUALENV/bin/python3 app.py
Footer
