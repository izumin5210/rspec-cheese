# coding: utf-8
lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rspec/cheki/version"

Gem::Specification.new do |spec|
  spec.name          = "rspec-cheki"
  spec.version       = RSpec::Cheki::VERSION
  spec.authors       = ["izumin5210"]
  spec.email         = ["masayuki@izumin.info"]

  spec.summary       = %q{RSpec::Cheki supports snapshot testing, inspired by Jest}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/izumin5210/rspec-cheki"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "meowcop", "~> 1.11"
  spec.add_development_dependency "rspec-its", "~> 1.2"
  spec.add_development_dependency "fakefs", "~> 0.11"
end
