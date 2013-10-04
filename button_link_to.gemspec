# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'button_link_to/version'

Gem::Specification.new do |spec|
  spec.name          = "button_link_to"
  spec.version       = ButtonLinkTo::VERSION
  spec.authors       = ["tonilin"]
  spec.email         = ["tonilin@gmail.com"]
  spec.description   = "a button version of Rails link_to helper"
  spec.summary       = "a button version of Rails link_to helper"
  spec.homepage      = "https://github.com/tonilin/button_link_to"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
