require 'rails/generators'

class Ipizza::InitGenerator < Rails::Generators::Base

  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  def create_configuration_file
    template 'ipizza.yml', 'config/ipizza.yml'
  end
  
  def copy_test_certificates
    %w(nordea_test_priv seb_test_priv.pem seb_test_pub.pem).each { |f| copy_file "certificates/#{f}", "config/certificates/#{f}" }
  end
end
