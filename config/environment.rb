# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.smtp_settings = {
address: "smtp.gmail.com",
port: 587,
domain: ENV["GMAIL_DOMAIN"],
authentication: "plain",
enable_starttls_auto: true,
user_name: ENV["GMAIL_USERNAME"],
password: ENV["GMAIL_PASSWORD"],
enable_starttls_auto: true,
openssl_verify_mode: 'none'
}