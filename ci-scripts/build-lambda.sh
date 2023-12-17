#!/bin/sh
echo Building lambda zip file

poetry --version
poetry install --without dev
poetry run pip list
poetry run pip freeze > requirements.txt

mkdir dist
cp -r src/* dist
poetry run pip --no-cache-dir install -r requirements.txt  --target dist

rm requirements.txt
cd dist
zip -qr ../deployment.zip *
cd ..
rm -rf dist
du deployment.zip
echo Build successful!