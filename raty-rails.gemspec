# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'raty-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "raty-rails"
  spec.version       = Raty::Rails::VERSION
  spec.authors       = ["Yuan Ping"]
  spec.email         = ["yp.xjgz@gmail.com"]
  spec.description   = %q{jquery raty for rails}
  spec.summary       = %q{jquery raty for rails}
  spec.homepage      = "https://github.com/yuanping/raty-rails"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "vendor"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
