### Setup Instructions
1. Clone the repository.
2. Run `composer install`.
3. Copy `.env.example` to `.env` and update database credentials.
4. Run `php artisan migrate --seed`.
5. Run `php artisan passport:install`.
6. Start the server: `php artisan serve`.

### API Documentation
#### Authentication
- **Register**: `POST /api/register`
- **Login**: `POST /api/login`
- **Logout**: `POST /api/logout`

#### Projects
- **Get All Projects**: `GET /api/projects`
- **Create Project**: `POST /api/projects`
- **Update Project**: `PUT /api/projects/{id}`
- **Delete Project**: `DELETE /api/projects/{id}`

### Example Requests/Responses
#### Register
**Request**:
```json
{
    "first_name": "John",
    "last_name": "Doe",
    "email": "john.doe@example.com",
    "password": "password"
}

{
    "message": "User registered successfully",
    "user": {
        "id": 1,
        "first_name": "John",
        "last_name": "Doe",
        "email": "john.doe@example.com"
    },
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9..."
}

### Test Credentials
- Email: `test@example.com`
- Password: `password`
