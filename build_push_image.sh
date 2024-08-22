# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker image ls

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker tag item-app:v1 ghcr.io/<username>/item-app

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal. 
# Perlu memasukan password berupa access token GitHub Packages
docker login ghcr.io -u <username>

# Mengunggah image ke Docker Hub / GitHub Packages.
docker push ghcr.io/<username>/item-app
