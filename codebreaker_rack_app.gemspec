# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "codebreaker_rack_app/version"

Gem::Specification.new do |spec|
  spec.name          = "codebreaker_rack_app"
  spec.version       = CodebreakerRackApp::VERSION
  spec.authors       = ["kh0ma-1991"]
  spec.email         = ["khomenko.dp@gmail.com"]

  spec.summary       = %q{WEB-UI for codebreaker}
  spec.description   = %q{Play codebreaker on web.}
  spec.homepage      = "https://github.com/kh0ma-1991/RGCources_Spring_2017-Codebreaker-rack"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
