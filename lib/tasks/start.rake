namespace :start do
  task :development do
    exec Bundler.with_clean_env { sh 'heroku local -f Procfile.dev' }
  end
end

desc 'start development server with Procfile'
task :start => 'start:development'
