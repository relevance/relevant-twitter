require 'rake'
require File.dirname(__FILE__) + "/lib/relevant/twitter.rb"

require 'rspec/core/rake_task'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.version = Relevant::Twitter::Version
    gemspec.name = "relevant-twitter"
    gemspec.summary = "Twitter widget for Relevant"
    gemspec.description = "Radiate your tweets"
    gemspec.email = "opensource@thinkrelevance.com"
    gemspec.homepage = "http://github.com/relevance/relevant-twitter"
    gemspec.authors = ["Jared Pace", "Rob Sanheim"]
    gemspec.add_dependency "relevant-widget", "~> 0.0.7"
    gemspec.add_dependency "twitter", "~> 0.9.10"
    gemspec.add_development_dependency "rspec", "~> 2.0.0.rc"
  end
  Jeweler::GemcutterTasks.new
  
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :default => :spec

task :full_release => [:check_dependencies, :spec, :release]