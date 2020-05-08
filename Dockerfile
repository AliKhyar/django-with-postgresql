# get the image

FROM python:3.7

#set up the environements
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#WORKSPACE
WORKDIR /code

#dependencies
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

#copy project\
COPY . /code