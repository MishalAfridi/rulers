require_relative 'lib/rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "rulers"
  spec.version       = Rulers::VERSION
  spec.authors       = ["MishalAfridi"]
  spec.email         = ["mishal94.ma@gmail.com"]

  spec.summary       = %q{A gem called rulers}
  spec.homepage      = "https://github.com/MishalAfridi/rulers"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "minitest"
end
