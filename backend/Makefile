makemigrations:
	sudo docker-compose exec web python manage.py makemigrations

migrate:
	sudo docker-compose exec web python manage.py migrate

createsuperuser:
	sudo docker-compose exec web python manage.py createsuperuser

collectstatic:
	sudo docker-compose exec web python manage.py collectstatic --no-input
