FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
ENV PORT=8000
EXPOSE $PORT
CMD python manage.py runserver 0.0.0.0:$PORT
