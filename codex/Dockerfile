# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src/codex
# copy project
Copy . .
RUN echo "I am in codex================"
RUN pwd
RUN ls
# install psycopg2 dependencies
#RUN apt update && apt install postgresql-dev gcc python3-dev musl-dev
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# copy entrypoint.sh
COPY ./entrypoint.sh .
RUN sed -i 's/\r$//g' /usr/src/codex/entrypoint.sh
RUN chmod +x /usr/src/codex/entrypoint.sh
# ENTRYPOINT ["/usr/src/codex/entrypoint.sh"]

# EXPOSE 8000
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]