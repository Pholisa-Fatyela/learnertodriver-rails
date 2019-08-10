web: bundle exec passenger start -p $PORT
worker: bundle exec sidekiq -e production -C config/sidekiq.yml
