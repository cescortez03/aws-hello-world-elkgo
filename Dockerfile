FROM public.ecr.aws/lambda/python:3.10

#WORKDIR /src/app

COPY requirements.txt .
COPY src/main.py ${LAMBDA_TASK_ROOT}
RUN pip install -r requirements.txt

CMD ["main.lambda_handler" ]