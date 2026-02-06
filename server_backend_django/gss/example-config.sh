# if you want debug active
DEBUG=true
# logging level
DJANGO_LOG_LEVEL=DEBUG

# database connection parameters
POSTGRES_USER=
POSTGRES_PASSWORD=
POSTGRES_DB=gssdb
POSTGRES_HOST=localhost
POSTGRES_PORT=5433

# deploy: IMPORTANT: make sure that you add your server name/address
ALLOWED_HOSTS=".localhost 0.0.0.0 127.0.0.1 [::1]"
CORS_ALLOWED_ORIGINS="http://localhost:80 http://localhost:8080"
CSRF_TRUSTED_ORIGINS="http://localhost:80 http://localhost:8080"

SECRETKEY=
