# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'HealthTracker'
set :repo_url, 'https://github.com/abraararique/health_tracker.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/abraar/apps/health_tracker'

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :pretty
set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/secrets.yml}

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
set :default_env, {path: '/home/abraar/.rbenv/shims:/home/abraar/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/local/mysql/bin'}

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
  desc 'Start Redis'
  task :redis do
    on roles(:all) do |host|
      execute :sudo, 'service redis-server restart'
    end
  end

  desc 'Start Sidekiq'
  task :sidekiq do
    on roles(:all) do |host|
      run "cd #{release_path} && bundle exec sidekiq -d -L log/sidekiq.log -e production"
    end
  end
  desc 'Restart web server'
  task :restart do
    on roles(:all) do |host|
      execute :sudo, 'service apache2 restart'
    end
  end
end

after 'deploy', 'deploy:redis'
after 'deploy', 'deploy:sidekiq'
after 'deploy', 'deploy:restart'