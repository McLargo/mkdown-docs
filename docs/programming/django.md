## Django

## Installation

to install django, lets create a requirements.txt file, with desired version of django

`django==1.11.13`

then, install libraries in file

`pip install -r requirements.txt`

check everything went ok:

`django-admin -h`

## Starting new project

First, on Django, you'll need to create a project by:

`django-admin startproject <project>`

that's basic configuration. To check evertyhing looks good, run:

`python manage.py runserver`

if we want to test via shell, run:

`python manage.py shell`


## basic schema of django app
a project can contains one or more apps. Also, an app can be used in several projects

To create a new app in our project:

`python manage.py startapp <app>`

New folder is created. It contains basic schema:

`<app>/views.py`
    represents the controller. One function per view. get data, processed it, and render template if needed

`<app>/urls.py`
    where url is mapped to corresponding function in views file

`<app>/models.py`
    represent the models. Django use an ORM, that means, tables and database corresponds to Model classes.

Add app configuration to `project/settings.py`:
```python
    INSTALLED_APPS = [
        '<app>.apps.<App>Config',
```

## Migrations

Every changes on models, needs to be migrate to database schema.
After add/update information to models.py file, changes needs to be done on database level

Make migrations:

`python manage.py makemigrations <app>`

See migration on sql:

`python manage.py sqlmigrate <app> <number>`

Run migrations:

`python manage.py migrate`

## django admin - basic commands

Creating an admin user:

`python manage.py createsuperuser`

Tests needs to be created. Run with:

`python manage.py test <app>`
