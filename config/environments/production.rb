ProjectCrowdmaps::Application.configure do
  
  config.cache_classes = true

 
  config.eager_load = true

  
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

 
  config.serve_static_assets = false

 
  config.assets.js_compressor = :uglifier
  config.assets.css_compressor = :sass

  config.assets.compile = false

  config.assets.digest = true

  config.assets.version = '1.0'

  
  config.log_level = :info

 
  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify

 
  config.log_formatter = ::Logger::Formatter.new
  
  config.action_mailer.raise_delivery_errors = false
    config.action_mailer.default_url_options = { :host => 'project-crowdmaps.herokuapp.com' }
  # ActionMailer Config
  # Setup for production - deliveries, no errors raised
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.default :charset => "utf-8"

  config.action_mailer.smtp_settings = {
   address: "smtp.gmail.com",
    port: 587,
    domain: "example.com",
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: ENV["GMAIL_USERNAME"],
    password: ENV["GMAIL_PASSWORD"]
  }

