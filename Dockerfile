# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /docker_codex/
RUN pwd
Copy . /docker_codex
# RUN echo "================================="
RUN pwd
RUN ls
WORKDIR /docker_codex/codex
RUN pip install -r requirements.txt
RUN ls
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]