FROM python:2.7.14-jessie

WORKDIR /apps/

COPY requirements.txt /apps/requirements.txt

COPY app/ /apps/

WORKDIR /apps/

RUN pip install -U pip setuptools && pip install -r /apps/requirements.txt

EXPOSE 5050

ENTRYPOINT ["python"]

CMD ["app.py"]