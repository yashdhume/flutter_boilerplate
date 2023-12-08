curl -X GET "http://localhost:4000/api/json" > lib/api/api.json;
del  /s /q lib\api\generated
dart run build_runner build --delete-conflicting-outputs
git add .