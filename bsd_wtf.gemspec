
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bsd_wtf/version"

Gem::Specification.new do |spec|
  spec.name          = "bsd_wtf"
  spec.version       = BsdWtf::VERSION
  spec.authors       = ["Steve Huff"]
  spec.email         = ["shuff@vecna.org"]

  spec.summary       = %q{Wrap the `wtf` command}
  spec.description   = %q{Capture the output of the BSD `wtf` command}
  spec.homepage      = "https://github.com/hakamadare/rubygem-bsd_wtf"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "json", "~> 2"
  spec.add_dependency "whiches", "~> 0"
end
