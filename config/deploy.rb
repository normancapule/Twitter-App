set :application, "twitter"
set :repository,  "https://normancapule@github.com/normancapule/Twitter-App.git" #direct address of the app
set :scm, :git
set :deploy_to,"/home/normz/Documents/Exist-Code-Camp/cap"
default_run_options[:pty] = true
server "localhost", :app, :web, :db, :primary => true
#role :web, "your web-server here"                          # Your HTTP server, Apache/etc
#role :app, "your app-server here"                          # This may be the same as your `Web` server
#role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"
# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
