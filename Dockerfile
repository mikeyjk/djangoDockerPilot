# https://docs.djangoproject.com/en/2.0/intro/tutorial01
FROM python:3
WORKDIR /udiomproj
RUN pip install Django==2.0.5 psycopg2==2.7.4 django-filter djangorestframework
COPY config/startDjango /usr/local/bin
RUN chmod +x /usr/local/bin/startDjango
ENTRYPOINT /usr/local/bin/startDjango
