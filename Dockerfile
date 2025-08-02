FROM python:3.10

WORKDIR /src/app

COPY requirements.txt .
COPY src/main.py .
RUN pip install -r requirements.txt

CMD ["src/app/main.lambda_handler" ]
