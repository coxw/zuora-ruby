# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'isone/version'

Gem::Specification.new do |spec|
  spec.name = 'isone-ruby'
  spec.version = Isone::VERSION
  spec.authors = ['John Gerhardt']
  spec.email = ['john.gerhardt@icloud.com']

  spec.summary = %q{A ruby wrapper for ISO NE API.}
  spec.description = %q{A ruby wrapper for ISO NE API.}
  spec.homepage = 'N/A'
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Runtime
  spec.add_runtime_dependency 'faraday'
  spec.add_runtime_dependency 'activemodel'
  spec.add_runtime_dependency 'activesupport'

  # Development
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'rspec_junit_formatter', '0.2.2'
end
