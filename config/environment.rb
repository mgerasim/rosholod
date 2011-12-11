# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Rosholod::Application.initialize!
AWS::S3::DEFAULT_HOST.replace 's3-website-ap-northeast-1.amazonaws.com'



