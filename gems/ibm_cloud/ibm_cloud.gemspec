require_relative 'lib/ibm_cloud/version'

Gem::Specification.new do |spec|
  spec.name          = "ibm_cloud"
  spec.version       = IbmCloud::VERSION
  spec.authors       = ["IBM Cloud Developers"]

  spec.summary       = %q{IBM Cloud SDK}
  spec.description   = %q{A Ruby gem for IBM Cloud APIs.}
  spec.homepage      = "Put your gem's website or public repo URL here."
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency("ibm_cloud_iam")
  spec.add_dependency("ibm_cloud_power")
  spec.add_dependency("ibm_cloud_vpc")
end
