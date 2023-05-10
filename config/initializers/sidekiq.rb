endpoint = ENV['REDIS_ENDPOINT'] || 'localhost:6379'
redis_url = "redis://#{endpoint}/5"

Sidekiq.configure_server do |config|
  config.redis = { url: redis_url }
end

Sidekiq.configure_client do |config|
  config.redis = { url: redis_url }
end
