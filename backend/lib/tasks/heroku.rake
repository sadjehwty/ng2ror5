namespace :git do
	desc 'Heroku pre-push'
	task :heroku do 
		%x{cd ../frontend}
		%x{ng build}
		%x{cp -R dist/* ../backend/public/}
		%x{cd ../backend}
		%x{git add .}
		%x{git commit -am "pro heroku"}
		%x{git push heroku master -f}
		%x{git reset --hard HEAD^}
	end
end
