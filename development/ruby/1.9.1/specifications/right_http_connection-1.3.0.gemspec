# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{right_http_connection}
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["RightScale, Inc."]
  s.date = %q{2011-03-25}
  s.description = %q{Rightscale::HttpConnection is a robust HTTP/S library.  It implements a retry
algorithm for low-level network errors.

== FEATURES:

- provides put/get streaming
- does configurable retries on connect and read timeouts, DNS failures, etc.
- HTTPS certificate checking
}
  s.email = %q{rubygems@rightscale.com}
  s.extra_rdoc_files = ["README.txt"]
  s.files = ["README.txt"]
  s.homepage = %q{http://rightscale.rubyforge.org/}
  s.rdoc_options = ["--quiet", "--main", "README.txt", "--title", "right_http_connection documentation", "--opname", "index.html", "--line-numbers", "--inline-source"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = %q{rightscale}
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{RightScale's robust HTTP/S connection module}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3"])
      s.add_development_dependency(%q<cucumber>, ["~> 0.8"])
      s.add_development_dependency(%q<flexmock>, ["~> 0.8.11"])
      s.add_development_dependency(%q<trollop>, ["~> 1.16"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.3"])
      s.add_dependency(%q<cucumber>, ["~> 0.8"])
      s.add_dependency(%q<flexmock>, ["~> 0.8.11"])
      s.add_dependency(%q<trollop>, ["~> 1.16"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.3"])
    s.add_dependency(%q<cucumber>, ["~> 0.8"])
    s.add_dependency(%q<flexmock>, ["~> 0.8.11"])
    s.add_dependency(%q<trollop>, ["~> 1.16"])
  end
end
