require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :openapi do
  IBM_CLOUD_API_GEMS = %w[ibm_cloud_power ibm_cloud_vpc ibm_cloud_iam ibm_cloud_resource_controller]
  IBM_CLOUD_OPENAPI_JSON = {
    "ibm_cloud_power"               => "power-cloud.json",
    "ibm_cloud_vpc"                 => "vpc.json",
    "ibm_cloud_iam"                 => "iam-identity-token-api.json",
    "ibm_cloud_resource_controller" => "resource-controller/resource-controller.json"
  }

  task :download_cli, [:version] do |_t, args|
    require "net/http"

    version = args[:version] || "5.0.0-beta2"

    puts "Downloading openapi-generator-cli-#{version}.jar..."

    uri = URI("https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/#{version}/openapi-generator-cli-#{version}.jar")

    response = Net::HTTP.get_response(uri)
    response.value

    puts "Downloading openapi-generator-cli-#{version}.jar...Complete"

    File.write("openapi-generator-cli", response.body)
  end

  task :download_openapi_specs do
    IBM_CLOUD_API_GEMS.each do |api_gem|
      openapi_json = IBM_CLOUD_OPENAPI_JSON[api_gem]
      url          = "https://cloud.ibm.com/apidocs/#{openapi_json}"
      output_file  = openapi_json.sub("/", "-")

      puts "Downloading #{url}..."
      system("curl #{url} > #{output_file} 2>/dev/null")
      puts "Downloading #{url}...Complete"
    end
  end

  task :generate => [:download_cli, :download_openapi_specs] do
    IBM_CLOUD_API_GEMS.each do |api_gem|
      openapi_json = IBM_CLOUD_OPENAPI_JSON[api_gem].sub("/", "-")
      output_path  = "gems/#{api_gem}"
      config_file  = "#{output_path}/.openapi-config.json"

      system("java -jar openapi-generator-cli generate --skip-validate-spec -i #{openapi_json} -c #{config_file} -g ruby -o #{output_path}")
    end
  end
end
