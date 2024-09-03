# Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama <username-docker>/karsajobs:latest (untuk backend)
docker build -t karsajobs-ui .

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs-ui ghcr.io/ihksans/karsajobs-ui:latest

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal. 
# Perlu memasukan password berupa access token GitHub Packages
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u ihksans --password-stdin

# Mengunggah image ke Docker Hub / GitHub Packages.
docker push ghcr.io/ihksans/karsajobs-ui:latest