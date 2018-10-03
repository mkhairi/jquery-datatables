# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery-datatables/version'

Gem::Specification.new do |spec|
  spec.name          = "jquery-datatables"
  spec.version       = Jquery::Datatables::VERSION
  spec.authors       = ["mkhairi"]
  spec.email         = ["mkhairi@labs.my"]
  spec.summary       = %q{Jquery DataTables web assets for Rails, etc.}
  spec.description   = %q{Include jQuery DataTables in asset pipeline with ease}
  spec.homepage      = "https://github.com/mkhairi/jquery-datatables"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency 'jquery-rails', '~> 3.1'
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
