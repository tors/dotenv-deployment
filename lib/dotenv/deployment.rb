require "dotenv"
require "dotenv/deployment/version"

# Load defaults from .env or *.env in config
Dotenv.load('.env')

# Override any existing variables if an environment-specific file exists
if environment = ENV['RACK_ENV'] || (defined?(Rails) && Rails.env)
  Dotenv.overload(".env.#{environment}")
end
