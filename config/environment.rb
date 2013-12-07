# Load the Rails application.
require File.expand_path('../application', __FILE__)

my_date_formats = { :default => '%m/%d/%Y' }
Date::DATE_FORMATS.merge!(my_date_formats)

# Initialize the Rails application.
Cosc578app::Application.initialize!
