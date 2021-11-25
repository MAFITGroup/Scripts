echo '*****MOVE TO ROOT WORKDIR*****'
cd c:/
echo '*****GIT PULL FROM*****' 
git clone https://github.com/MAFITGroup/lsu_app.git
cd c:/lsu_app
git reset --hard
git clean -d -f .
echo '*****SELECT BRANCH TO DEPLOY*****'
git branch
git checkout produccion  
git pull 
echo '*****INIT DEPLOY..*****'
flutter build apk --release -v
echo '*****FINISH DEPLOY*****'
echo '*****PUBLISH DEPLOY*****'

echo '*****FINISH PUBLISH DEPLOY*****'