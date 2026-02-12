set -x 

flutter clean
GSS_GIT_TAG=$(git -C .. describe --tags --always --dirty 2>/dev/null || echo "unknown")
flutter build web --dart-define=GSS_GIT_TAG="$GSS_GIT_TAG"

rm -rf ../server_backend_django/static/assets
rm -rf ../server_backend_django/static/canvaskit
cp -rv build/web/* ../server_backend_django/static/
