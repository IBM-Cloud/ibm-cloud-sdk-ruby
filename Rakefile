require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :openapi do
  IBM_CLOUD_GEMS = {
    "ibm_cloud_iam"                 => "iam-identity-token-api.json",
    "ibm_cloud_power"               => "power-cloud.json",
    "ibm_cloud_resource_controller" => "resource-controller/resource-controller.json",
    "ibm_cloud_vpc"                 => "vpc.json"
  }

  task :download_cli, [:version] do |_t, args|
    version = args[:version] || "5.0.0-beta2"

    target_file    = "openapi-generator-cli-#{version}"
    target_symlink = "openapi-generator-cli"

    unless File.exist?(target_file)
      puts "Downloading openapi-generator-cli-#{version}.jar..."

      uri = URI("https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/#{version}/openapi-generator-cli-#{version}.jar")

      require "net/http"
      response = Net::HTTP.get_response(uri)
      response.value

      File.write("openapi-generator-cli-#{version}", response.body)
      puts "Downloading openapi-generator-cli-#{version}.jar...Complete"
    end

    File.unlink(target_symlink) if File.exist?(target_symlink)
    File.symlink(target_file, target_symlink)
  end

  task :download_openapi_specs do
    require "json"

    IBM_CLOUD_GEMS.each do |api_gem, openapi_json|
      url          = "https://cloud.ibm.com/apidocs/#{openapi_json}"
      output_file  = openapi_json.sub("/", "-")

      puts "Downloading #{url}..."
      system("curl #{url} > #{output_file} 2>/dev/null")
      puts "Downloading #{url}...Complete"
    end
  end

  task :generate => [:download_cli, :download_openapi_specs] do
    IBM_CLOUD_GEMS.each do |api_gem, openapi_json|
      openapi_json.sub!("/", "-")
      output_path  = "gems/#{api_gem}"
      config_file  = "#{output_path}/.openapi-config.json"

      system("java -jar openapi-generator-cli generate --skip-validate-spec -i #{openapi_json} -c #{config_file} -g ruby -o #{output_path}")
    end
  end
end
