module Ipizza
  module Rails
  end
end

require 'ipizza-rails/railtie' if defined?(::Rails) && ::Rails::VERSION::MAJOR >= 3
