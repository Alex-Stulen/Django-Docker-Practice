# Practice with Docker and Django

---

The practice of using docker on a project.

---

## Technologies:

+ Django
+ Postgres
+ Gunicorn
+ Nginx
+ Docker
+ Git

---

## Project installation:

+ ```git clone https://github.com/Alex-Stulen/Django-Docker-Practice.git```
+ Create an **.env** file in the [./backend](./backend) dir, using the [./backend/.env.sample](./backend/.env.sample) file as an example
+ ```docker-compose up``` or ```docker-compose up -d``` if you want to start the project in daemon mode.
+ Then go to [localhost](http://localhost) to use the website

---

## Project setup:

Use [localhost](http://localhost) if you specified ```DEBUG=False``` in **./backend/.env** file
or
[127.0.0.1:8000](http://127.0.0.1:8000) for ```DEBUG=True```

In ```DEBUG=True``` mode you can use server like a regular django server. 
You can change some files and then save changed file, after saving django server will restart automatically.

But in ```DEBUG=False``` mode,  after some changes you must restart all containers with the ```docker-compose restart``` command. 

If you want to change the default [localhost](http://localhost) to your own domain when 
settings ```DEBUG=False``` for production, you need to modify the file **./backend/deploy/nginx/default.conf**
and replace the localhost domain with your own.

---

## Django shell commands:

Use [make](https://www.gnu.org/software/make/) tool and this commands:

**makemigrations** command:
```make makemigrations```

**migrate** command:
```make migrate```

**createsuperuser** command:
```make createsuperuser```

**collectstatic** command:
```make collectstatic```

Check the [./backend/Makefile](./backend/Makefile) to familiarize yourself with the commands.

---

## Django Administration:

[/admin/](http://localhost/admin/) - django admin panel. 
Create a superuser using the createsuperuser command, and then you can log in to the admin panel.

---
