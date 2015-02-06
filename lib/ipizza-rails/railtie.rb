require 'ipizza'
require 'rails'
require "erb"

require 'ipizza-rails/form_helpers'

class Ipizza::Rails::Railtie < ::Rails::Railtie
  
  generators do
    require 'ipizza-rails/generator/notification'
    require 'ipizza-rails/generator/init'
  end
  
  config.before_configuration do
    if File.exist?(Rails.root.join('config', 'ipizza.yml'))
      Ipizza::Config.configure do |c|
        c.certs_root = Rails.root.join('config', 'certificates')
        c.load_from_hash(YAML::load(ERB.new(Rails.root.join('config', 'ipizza.yml').read).result).fetch(Rails.env))
      end
    end
  end
  
  initializer 'ipizza-rails.view_helpers' do
    ActionView::Base.send :include, Ipizza::Rails::FormHelpers
  end
end
