# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'ipizza-rails/version'

Gem::Specification.new do |s|
  s.name        = 'ipizza-rails'
  s.version     = Ipizza::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Priit Haamer']
  s.email       = ['priit@fraktal.ee']
  s.homepage    = "http://rubygems.org/gems/ipizza-rails"
  s.summary     = %q{Adds iPizza support to Rails 3 applications}
  s.description = %q{Helpers to use iPizza inside Rails 3 applications}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  
  s.add_dependency(%q<ipizza>, ['>= 0.7.1'])
  
  s.add_development_dependency('rspec', ['>= 2.5.0'])
end
