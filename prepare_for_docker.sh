set -x

cd server_backend_django
source .venv/bin/activate

rm -rf ./static
mkdir static


read -p "Press Enter to continue..."


cd gss
# source config file if it exists
if [ -f ./config.sh ]; then
    echo "Sourcing config.sh"
    source ./config.sh
fi
./manage.py collectstatic --noinput


read -p "Press Enter to continue..."


# go build the frontend
cd ../../server_frontend_flutter/
flutter clean
flutter build web


read -p "Press Enter to continue..."


# copy the frontend to the static folder
cp -rv build/web/* ../server_backend_django/static/

cd ..
