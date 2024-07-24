# Use the official Python image from the Docker Hub
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install -r requirements.txt
# Expose port 8000 for the application
EXPOSE 8000

# Command to run migrations and start the Uvicorn server
CMD ["sh", "-c", "python manage.py collectstatic --noinput && python manage.py migrate && gunicorn user_service.asgi:application -k uvicorn.workers.UvicornWorker --bind 0.0.0.0:8000 --workers 4 --reload && python manage.py run_rabbitmq_producer"]
