require_relative 'lib/ibm_cloud_databases/version'

Gem::Specification.new do |spec|
  spec.name          = "ibm_cloud_databases"
  spec.version       = IbmCloudDatabases::VERSION
  spec.authors       = ["nasar.khan@ibm.com"]
  spec.email         = ["nasar.khan@ibm.com"]

  spec.summary       = %q{IBM Cloud Databases Ruby SDK}
  spec.homepage      = "https://github.com/IBM-Cloud/ibm-cloud-sdk-ruby"
  spec.licenses      = ["Apache-2.0"]
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.metadata["source_code_uri"]}/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "concurrent-ruby", "~> 1.0"
  spec.add_runtime_dependency "http", "~> 4.4.1"
  spec.add_runtime_dependency "ibm_cloud_sdk_core", "~> 1.1.1"
  spec.add_runtime_dependency "jwt", "~> 2.2.1"
end
