# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{relevant-twitter}
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jared Pace", "Rob Sanheim"]
  s.date = %q{2010-10-08}
  s.description = %q{Radiate your tweets}
  s.email = %q{opensource@thinkrelevance.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     ".rvmrc",
     "README.md",
     "Rakefile",
     "lib/relevant/twitter.rb",
     "relevant-twitter.gemspec",
     "spec/relevant/twitter_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/relevance/relevant-twitter}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Twitter widget for Relevant}
  s.test_files = [
    "spec/relevant/twitter_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<relevant-widget>, ["~> 0.0.7"])
      s.add_runtime_dependency(%q<twitter>, ["~> 0.9.10"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0.0.rc"])
    else
      s.add_dependency(%q<relevant-widget>, ["~> 0.0.7"])
      s.add_dependency(%q<twitter>, ["~> 0.9.10"])
      s.add_dependency(%q<rspec>, ["~> 2.0.0.rc"])
    end
  else
    s.add_dependency(%q<relevant-widget>, ["~> 0.0.7"])
    s.add_dependency(%q<twitter>, ["~> 0.9.10"])
    s.add_dependency(%q<rspec>, ["~> 2.0.0.rc"])
  end
end

