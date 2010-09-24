Gem::Specification.new do |s|
  s.name = %q{relevance-twitter}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jdpace, rsanheim"]
  s.date = %q{2010-09-24}
  s.description = %q{Relevant Twitter widget}
  s.email = %q{jared@codewordstudios.com}
  s.files  = ['Gemfile', 'Gemfile.lock','Rakefile','README.md']
  s.files += Dir['lib/**/*.rb']
  s.homepage = %q{http://github.com/relevance/relevant-twitter}
  s.required_dependencies "relevant-widget"
  s.required_dependencies "tilt" # TODO specific version
  
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Relevant Twitter widget}
  s.test_files = Dir['spec/**/*.rb']
end

