#!/bin/bash
cd frontend
ng build
cp -R dist/* ../backend/public/
cd ../backend/
git add .
git commit -am "pro heroku"
git push heroku master -f
git reset --hard HEAD^
