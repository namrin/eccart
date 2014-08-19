# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exist?(ENV['BUNDLE_GEMFILE'])
#require 'tlsmail'    
#Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)