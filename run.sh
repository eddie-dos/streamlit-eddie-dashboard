data_folder=$(pwd)"/data"
docker run -p 8000:8000 -v $data_folder:/app/data eddie-dash-app:latest 