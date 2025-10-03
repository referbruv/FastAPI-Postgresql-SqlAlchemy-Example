FROM python:3-slim

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir -r /code/requirements.txt

COPY ./api /code/api

CMD ["fastapi", "run", "api/main.py", "--port", "80"]