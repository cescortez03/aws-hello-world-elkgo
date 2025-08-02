FROM python:3.10

WORKDIR /src/app

COPY requirements.txt .
RUN pip install -r requirements.txt

CMD ["main.lambda_handler" ]
