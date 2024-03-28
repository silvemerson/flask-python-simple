FROM python


COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

ENV MY_PASS=12345

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
