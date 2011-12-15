# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Rosholod::Application.initialize!
#AWS::S3::DEFAULT_HOST.replace 's3-website-ap-northeast-1.amazonaws.com'

#config.action_mailer.delivery_method = :smtp

#  ActionMailer::Base.smtp_settings = {  
#	:address              => "smtp.gmail.com",
#	:port                 => 587,
#	:user_name            => "mgerasim.mail@gmail.com",
#	:password             => "AmurKabel43",
#	:authentication       => "plain",
#	:enable_starttls_auto => true
 # } 

#config.action_mailer.raise_delivery_errors = true

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
    :port           => '587',
      :authentication => :plain,
        :user_name      => ENV['SENDGRID_USERNAME'],
          :password       => ENV['SENDGRID_PASSWORD'],
            :domain         => 'heroku.com'
            }
         ActionMailer::Base.delivery_method = :smtp


Pony.options = {
  :via => :smtp,
    :via_options => {
        :address => 'smtp.sendgrid.net',
            :port => '587',
                :domain => 'heroku.com',
                    :user_name => ENV['SENDGRID_USERNAME'],
                        :password => ENV['SENDGRID_PASSWORD'],
                            :authentication => :plain,
                                :enable_starttls_auto => true
                                  }
                                  }
                                  
                                  
                                  
Mail.defaults do
  delivery_method :smtp, {
      :address => 'smtp.sendgrid.net',
          :port => '587',
              :domain => 'heroku.com',
                  :user_name => ENV['SENDGRID_USERNAME'],
                      :password => ENV['SENDGRID_PASSWORD'],
                          :authentication => :plain,
                              :enable_starttls_auto => true
                                }
                                end