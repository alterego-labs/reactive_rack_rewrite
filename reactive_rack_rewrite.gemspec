# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reactive_rack_rewrite/version'

Gem::Specification.new do |spec|
  spec.name          = "reactive_rack_rewrite"
  spec.version       = ReactiveRackRewrite::VERSION
  spec.authors       = ["Sergey Gernyak"]
  spec.email         = ["sergeg1990@gmail.com"]
  spec.summary       = %q{Use Rack Rewrite On Fly :airplane:}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/alterego-labs/reactive_rack_rewrite"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_development_dependency "rails",          ">= 4"

  spec.add_development_dependency "rspec",          "3.3.0"
  spec.add_development_dependency "rspec-its",      "1.2.0"
  spec.add_development_dependency "pry-nav",        "0.2.3"
  spec.add_development_dependency "codeclimate-test-reporter",        "0.4.0"
  spec.add_development_dependency "sqlite3"

  spec.add_development_dependency "rack-rewrite", '1.5.1'
end
