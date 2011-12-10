# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "therubyracer-heroku"
  s.version = "0.8.1.pre3"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Charles Lowell", "Bill Robertson"]
  s.date = "2011-01-21"
  s.description = "Call javascript code and manipulate javascript objects from ruby. Call ruby code and manipulate ruby objects from javascript."
  s.email = "cowboyd@thefrontside.net"
  s.executables = ["therubyracer", "v8"]
  s.extensions = ["ext/v8/extconf.rb"]
  s.files = ["bin/therubyracer", "bin/v8", "ext/v8/extconf.rb"]
  s.homepage = "http://github.com/aler/therubyracer-heroku"
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = "therubyracer-heroku"
  s.rubygems_version = "1.8.11"
  s.summary = "Embed the V8 Javascript interpreter into Ruby built for Heroku"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_dependency(%q<rake-compiler>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.0.0"])
    s.add_dependency(%q<rake-compiler>, [">= 0"])
  end
end
