# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'ipizza-rails/version'

Gem::Specification.new do |s|
  s.name        = 'ipizza-rails'
  s.version     = Ipizza::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Priit Haamer', 'Tanel Jakobsoo']
  s.email       = ['priit@voog.com', 'tanel@voog.com']
  s.homepage    = "https://github.com/Voog/ipizza-rails"
  s.summary     = %q{Adds iPizza support to Rails applications}
  s.description = %q{Helpers to use iPizza inside Rails applications}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_dependency 'ipizza', '>= 2.1.0'

  s.add_development_dependency 'rspec', '>= 2.9.0'
  s.add_development_dependency 'rake'
end
