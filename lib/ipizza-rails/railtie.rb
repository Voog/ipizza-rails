require 'ipizza'
require 'rails'

class Ipizza::Rails::Railtie < ::Rails::Railtie
  
  generators do
    require 'ipizza-rails/generator/notification'
    require 'ipizza-rails/generator/init'
  end
  
  config.before_configuration do
    if File.exist?(Rails.root.join('config', 'ipizza.yml'))
      Ipizza::Config.configure do |c|
        c.certs_root = Rails.root.join('config', 'certificates')
        c.load_from_hash(YAML::load_file(Rails.root.join('config', 'ipizza.yml')).fetch(Rails.env))
      end
    end
  end
end
