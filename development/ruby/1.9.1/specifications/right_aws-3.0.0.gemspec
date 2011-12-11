# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{right_aws}
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["RightScale, Inc."]
  s.date = %q{2011-11-15}
  s.description = %q{== DESCRIPTION:

The RightScale AWS gems have been designed to provide a robust, fast, and secure interface to Amazon EC2, EBS, S3, SQS, SDB, and CloudFront.
These gems have been used in production by RightScale since late 2006 and are being maintained to track enhancements made by Amazon.
The RightScale AWS gems comprise:

- RightAws::Ec2 -- interface to Amazon EC2 (Elastic Compute Cloud) and the
  associated EBS (Elastic Block Store)
- RightAws::S3 and RightAws::S3Interface -- interface to Amazon S3 (Simple Storage Service)
- RightAws::Sqs and RightAws::SqsInterface -- interface to first-generation Amazon SQS (Simple Queue Service) (API version 2007-05-01)
- RightAws::SqsGen2 and RightAws::SqsGen2Interface -- interface to second-generation Amazon SQS (Simple Queue Service) (API version 2008-01-01)
- RightAws::SdbInterface and RightAws::ActiveSdb -- interface to Amazon SDB (SimpleDB)
- RightAws::AcfInterface -- interface to Amazon CloudFront, a content distribution service

== FEATURES:

- Full programmmatic access to EC2, EBS, S3, SQS, SDB, and CloudFront.
- Complete error handling: all operations check for errors and report complete
  error information by raising an AwsError.
- Persistent HTTP connections with robust network-level retry layer using
  RightHttpConnection).  This includes socket timeouts and retries.
- Robust HTTP-level retry layer.  Certain (user-adjustable) HTTP errors returned
  by Amazon's services are classified as temporary errors.
  These errors are automaticallly retried using exponentially increasing intervals.
  The number of retries is user-configurable.
- Fast REXML-based parsing of responses (as fast as a pure Ruby solution allows).
- Uses libxml (if available) for faster response parsing.
- Support for large S3 list operations.  Buckets and key subfolders containing
  many (> 1000) keys are listed in entirety.  Operations based on list (like
  bucket clear) work on arbitrary numbers of keys.
- Support for streaming GETs from S3, and streaming PUTs to S3 if the data source is a file.
- Support for single-threaded usage, multithreaded usage, as well as usage with multiple
  AWS accounts.
- Support for both first- and second-generation SQS (API versions 2007-05-01
  and 2008-01-01).  These versions of SQS are not compatible.
- Support for signature versions 0 and 1 on SQS, SDB, and EC2.
- Interoperability with any cloud running Eucalyptus (http://eucalyptus.cs.ucsb.edu)
- Test suite (requires AWS account to do "live" testing).
}
  s.email = %q{support@rightscale.com}
  s.extra_rdoc_files = ["README.txt"]
  s.files = ["README.txt"]
  s.rdoc_options = ["--main", "README.txt", "--title", ""]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.requirements = ["libxml-ruby >= 0.5.2.0 is encouraged"]
  s.rubyforge_project = %q{rightaws}
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{Interface classes for the Amazon EC2, SQS, and S3 Web Services}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<right_http_connection>, [">= 1.2.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<right_http_connection>, [">= 1.2.5"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<right_http_connection>, [">= 1.2.5"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
