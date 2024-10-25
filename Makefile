create-venv:
	virtualenv venv \
	&& source venv/bin/activate \
    && python -m pip install ipykernel \
    && python -m ipykernel install --user --name=venv \
    && pip install -r requirements.txt

load:
	. venv/bin/activate
