require 'rubygems'
require 'rake'

require 'rspec'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = 'ipizza-rails'
    
    gemspec.summary = 'Adds ipizza support to Rails 3 applications'
    gemspec.description = <<-DESC
      Helpers to use ipizza inside Rails 3 applications
    DESC
    
    gemspec.email = 'priit@fraktal.ee'
    gemspec.homepage = 'http://github.com/priithaamer/ipizza-rails'
    gemspec.authors = ['Priit Haamer']
  end
rescue LoadError
  puts 'Jeweler not available. Install it with: gem install jeweler'
end

task :default => :spec