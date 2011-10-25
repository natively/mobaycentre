# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Mobaycentre::Application.initialize!

config.action_mailer.smtp_settings = {
    :enable_starttls_auto => true,
    :address        => 'smtp.sendgrid.net',
    :port           => '25',
    :authentication => :plain,
    :user_name      => 'briancchia',
    :password       => 'jaebzzzz',
    :domain         => 'mobaycentre.com'
  } 