@echo off

git clone https://github.com/DB-Inc-Capstone/back-eurekaserver.git
git clone https://github.com/DB-Inc-Capstone/back-apigateway.git
git clone https://github.com/DB-Inc-Capstone/back-worker.git


cd back-eurekaserver && git pull origin main
cd ..

cd back-apigateway && git pull origin main
cd ..

cd back-worker && git pull origin main
cd ..


cd back-eurekaserver && .\gradlew.bat build
cd .. 

cd back-apigateway && .\gradlew.bat build
cd ..

cd back-worker && .\gradlew.bat build
cd ..

docker-compose down
docker-compose up
