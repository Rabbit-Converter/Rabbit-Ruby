# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rabbit/version'

Gem::Specification.new do |spec|
  spec.name          = "rabbit-mm"
  spec.version       = Rabbit::VERSION
  spec.authors       = ["Ye Lin Aung"]
  spec.email         = ["me@yelinaung.com"]

  spec.summary       = 'Rabbit - Another Zawgyi <=> Unicode Converter'
  spec.description   = 'Rabbit is another Zawgyi <=> Unicode Converter under MIT liecnse.'
  spec.homepage      = 'http://saturngod.github.io/Rabbit'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'minitest'
end
