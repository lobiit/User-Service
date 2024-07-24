# User Service

The User Service is a microservice built with Django and Django REST Framework. It handles user registration and retrieval of user details.

## Features

- User registration
- Retrieve user details

## Requirements

- Python 3.9+
- Django
- Django REST Framework

## Setup

### Local Development

1. **Clone the repository**:
   ```sh
   git clone https://github.com/lobiit/User-Service.git
   cd user_service
   ```

2. **Install dependencies**:
   ```sh
   pip install django djangorestframework
   ```

3. **Apply migrations**:
   ```sh
   python manage.py migrate
   ```

4. **Run the development server**:
   ```sh
   python manage.py runserver
   ```

### Docker

1. **Build the Docker image**:
   ```sh
   docker build -t user_service .
   ```

2. **Run the Docker container**:
   ```sh
   docker run -d -p 8000:8000 user_service
   ```

## API Endpoints

- `POST /api/users/`: Register a new user.
- `GET /api/users/{id}/`: Retrieve details of a user by ID.

## Example Requests

### Register a User

```sh
curl -X POST "http://localhost:8000/api/users/" -H "Content-Type: application/json" -d '{"username": "john_doe", "email": "john@example.com"}'
```

### Retrieve User Details

```sh
curl -X GET "http://localhost:8000/api/users/1/"
```

