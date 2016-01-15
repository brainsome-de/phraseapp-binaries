# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phraseapp/binaries/version'

Gem::Specification.new do |spec|
  spec.name          = "phraseapp-binaries"
  spec.version       = Phraseapp::Binaries::VERSION
  spec.authors       = ["Daniel Lehmann"]
  spec.email         = ["lehmann@taktsoft.com"]

  spec.summary       = %q{Wrapps the binaries provided by phraseapp.com for ease of use.}
  spec.homepage      = "https://github.com/brainsome-de/"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "'http://gemserver.brainsome.de'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
