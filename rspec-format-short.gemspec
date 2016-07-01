# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rspec/custom/formatters/short/version"

Gem::Specification.new do |spec|
  spec.name          = "rspec-format-short"
  spec.version       = Rspec::Format::Short::VERSION
  spec.authors       = ["Vincent Van Driessche"]
  spec.email         = ["vncntvandriessche@gmail.com"]

  spec.summary       = "A short format for rspec tests."
  spec.description   = "#{spec.summary} Created to be used in monitoring systems."
  spec.homepage      = "http://devnull.com"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  else
    fail "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "rspec", "~> 3.0"
end
