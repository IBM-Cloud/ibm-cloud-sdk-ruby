require_relative 'lib/ibm/cloud/sdk/version'

Gem::Specification.new do |spec|
  spec.name          = "ibm-cloud-sdk"
  spec.version       = IBM::Cloud::SDK::VERSION
  spec.authors       = ["IBM Cloud Developers"]

  spec.summary       = %q{IBM Cloud API Ruby gem.}
  spec.description   = %q{A Ruby gem for interacting with the various IBM Cloud services.}
  spec.homepage      = "https://github.com/IBM-Cloud/ibm-cloud-sdk-ruby"
  spec.licenses      = %w["Apache-2.0"]
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"]  = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/IBM-Cloud/ibm-cloud-sdk-ruby/blob/v#{spec.version}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client"
  spec.add_dependency "httparty"
end
