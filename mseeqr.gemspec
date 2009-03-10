# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mseeqr}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sandro Turriate"]
  s.date = %q{2009-03-10}
  s.description = %q{Ruby wrapper for seeqpod's mobile service.}
  s.email = %q{sandro.turriate@gmail.com}
  s.extra_rdoc_files = ["History.txt", "README.txt"]
  s.files = ["History.txt", "README.txt", "Rakefile", "lib/mseeqr.rb", "lib/mseeqr/track.rb", "mseeqr.gemspec", "script/console", "spec/mseeqr/track_spec.rb", "spec/site/coldplay_results.html", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://turriate.com}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{mseeqr}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby wrapper for seeqpod's mobile service.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
