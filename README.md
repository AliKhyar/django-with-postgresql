# django-with-postgresql
Example of how django and postgresql work together

1- add depends on in web service in docker-compose
2- add db service
3- change database in settings to:
    DATABASES = {
    'default': {
    'ENGINE': 'django.db.backends.postgresql',
    'NAME': 'postgres',
    'USER': 'postgres',
    'PASSWORD': 'postgres',
    'HOST': 'db',
    'PORT': 5432
        }
    }
4- install Psychopg, the database adapter. you can do it with:
docker-compose exec web pipenv install psycopg2-binary==2.8.3
5- force rebuild by:
 docker-compose up -d --build