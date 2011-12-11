# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{paperclip-aws}
  s.version = "1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Igor Alexandrov"]
  s.date = %q{2011-12-06}
  s.description = %q{'paperclip-aws' is a full featured storage module that supports all S3 locations (US, European and Tokio) without any additional hacking.}
  s.email = %q{igor.alexandrov@gmail.com}
  s.extra_rdoc_files = ["LICENSE.txt", "README.md"]
  s.files = ["LICENSE.txt", "README.md"]
  s.homepage = %q{http://github.com/igor-alexandrov/paperclip-aws}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{Storage module to official 'aws-sdk' gem for Amazon S3}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paperclip>, [">= 2.4.0"])
      s.add_runtime_dependency(%q<aws-sdk>, [">= 1.2.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
    else
      s.add_dependency(%q<paperclip>, [">= 2.4.0"])
      s.add_dependency(%q<aws-sdk>, [">= 1.2.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    end
  else
    s.add_dependency(%q<paperclip>, [">= 2.4.0"])
    s.add_dependency(%q<aws-sdk>, [">= 1.2.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
  end
end
