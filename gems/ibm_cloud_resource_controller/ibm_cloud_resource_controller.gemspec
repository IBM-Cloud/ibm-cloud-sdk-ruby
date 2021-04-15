require_relative 'lib/ibm_cloud_resource_controller/version'

Gem::Specification.new do |spec|
  spec.name          = "ibm_cloud_resource_controller"
  spec.version       = IbmCloudResourceController::VERSION
  spec.authors       = ["IBM Cloud Developers"]
  spec.email         = [""]

  spec.summary       = "IBM Cloud Resource Controller API"
  spec.description   = "Ruby gem for IBM Cloud Resource Controller API"
  spec.homepage      = "https://github.com/IBM-Cloud/ibm-cloud-sdk-ruby"
  spec.licenses      = ["Apache-2.0"]
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.metadata["source_code_uri"]}/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ibm_cloud_sdk_core", "~> 1.1.1"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubocop"
end
