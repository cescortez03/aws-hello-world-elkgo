FROM python:3.10

WORKDIR /src/app
EXPOSE 5000

COPY requirements.txt .
RUN pip install -r requirements.txt

CMD ["flask","run" ]
