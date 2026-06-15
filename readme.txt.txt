REDIS_WITH_DOCKER
-------------------------
commands to run the project

1. Build  an Image
	
	docker build -t redis_with_docker #-t stands for tag 

2. Run the image

	 docker run -d --name fastapi-container_2 -p 8000:8090 redis_with_docker  

3. Run docker compose

	docker-compose up --build                                                                        