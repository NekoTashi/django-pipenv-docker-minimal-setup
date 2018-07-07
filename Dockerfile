FROM python:3.6

ENV PYTHONUNBUFFERED=1

RUN mkdir /app/
WORKDIR /app/

RUN pip install pipenv
COPY Pipfile Pipfile.lock /app/
RUN pipenv install --deploy --system

COPY . /app/

CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]
