@echo off

git clone https://github.com/DB-Inc-Capstone/back-eurekaserver.git
git clone https://github.com/DB-Inc-Capstone/back-apigateway.git
git clone https://github.com/DB-Inc-Capstone/back-worker.git

cd back-eurekaserver
git pull origin main
start .\gradlew.bat build || echo "Error in back-eurekaserver build"
cd ..

cd back-apigateway
git pull origin main
start .\gradlew.bat build || echo "Error in back-apigateway build"
cd ..

cd back-worker
git pull origin main
start .\gradlew.bat build || echo "Error in back-worker build"
cd ..