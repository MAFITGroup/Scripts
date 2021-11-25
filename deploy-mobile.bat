echo '*****MOVE TO ROOT WORKDIR*****'
cd c:/
echo '*****GIT PULL FROM*****' 
git clone https://github.com/MAFITGroup/lsu_app.git
cd c:/lsu_app
git reset --hard
git clean -d -f .
echo '*****SELECT BRANCH TO DEPLOY*****'
git branch
git checkout testing  
git pull 
echo '*****INIT DEPLOY..*****'
flutter build apk --release -v
echo '*****FINISH DEPLOY*****'
echo '*****PUBLISH DEPLOY*****'
firebase appdistribution:distribute C:/lsu_app/build/app/outputs/apk/release/app-release.apk --app 1:1051905371406:android:3cf90cc67de4cf911a3b5f --release-notes "A Testing" --groups "Testing" --token 1//0h1xqnCKUEicRCgYIARAAGBESNwF-L9IrhWWiEOM297NS_K6GbfJ4AZwr2k_TnpHDAEmew3ohMjr5s2Smu8-pQTqHwMJzTUBvpzM
echo '*****FINISH PUBLISH DEPLOY*****'