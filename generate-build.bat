rd /s /q build
docker build --no-cache  -t keycloack-last-login-image .
docker create --name keycloack-last-login keycloack-last-login-image
docker cp keycloack-last-login:/app/build/. build
docker rm keycloack-last-login
pause