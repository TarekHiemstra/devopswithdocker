# EXERCISE 2.9 Required changes

Two changes were required required in ./example-frontend/Dockerfile and ./example-backend/Dockerfile

## example-frontend change
> Change ENV REACT_APP_BACKEND_URL=http://localhost:8080 to ENV REACT_APP_BACKEND_URL=http://localhost/api/

## example-backend change
> Change ENV REQUEST_ORIGIN=http://localhost:5001 to ENV REQUEST_ORIGIN=http://localhost

After that run:
```
docker compose build example-frontend example-backend
```
