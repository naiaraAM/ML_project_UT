create-venv:
	virtualenv venv \
	&& source venv/bin/activate \
    && python -m pip install ipykernel \
    && python -m ipykernel install --user --name=venv \
    && pip install -r requirements.txt


setup-kaggle:
	pip install -q kaggle \
	&& mkdir ~/.kaggle/ \
	&& mv kaggle.json ~/.kaggle/kaggle.json \
	&& chmod 600 ~/.kaggle/kaggle.json \
	&& kaggle competitions download -c 'playground-series-s4e6'

load:
	. venv/bin/activate
