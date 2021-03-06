require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LearnertodriverRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults "6.0" 

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.assets.precompile += %w( foundation_emails.css )
  end
end

Raven.configure do |config|
  config.dsn = 'https://c5fd40e7075e4248a90d08bff989825b:18ce1c085f4949dfa903fdeb7a11aece@sentry.io/1529851'
end