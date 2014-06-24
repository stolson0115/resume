# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
address: "smtp.gmail.com",
port: 587,
domain: ENV["GMAIL_DOMAIN"],
authentication: "plain",
enable_starttls_auto: true,
user_name: ENV["GMAIL_USERNAME"],
password: ENV["GMAIL_PASSWORD"],
openssl_verify_mode: 'none'
}