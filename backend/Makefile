makemigrations:
	sudo docker-compose run --rm web python manage.py makemigrations

migrate:
	sudo docker-compose run --rm web python manage.py migrate

createsuperuser:
	sudo docker-compose run --rm web python manage.py createsuperuser

collectstatic:
	sudo docker-compose run --rm web python manage.py collectstatic --no-input
