require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :openapi do
  IBM_CLOUD_GEMS = {
    "ibm_cloud_global_tagging"      => "tagging.json",
    "ibm_cloud_iam"                 => "iam-identity-token-api.json",
    "ibm_cloud_power"               => "power-cloud.json",
    "ibm_cloud_resource_controller" => "resource-controller/resource-controller.json",
    "ibm_cloud_object_storage"      => "cos/cos-compatibility.json",
  }

  task :download_cli, [:version] do |_t, args|
    version = args[:version] || "5.0.0-beta2"

    output_file    = "openapi-generator-cli-#{version}.jar"
    target_symlink = "openapi-generator-cli"

    unless File.exist?(output_file)
      puts "Downloading #{output_file}..."

      uri = URI("https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/#{version}/#{output_file}")

      open(output_file, "wb") { |f| download(uri, f) }

      puts "Downloading #{output_file}...Complete"
    end

    File.unlink(target_symlink) if File.exist?(target_symlink)
    File.symlink(output_file, target_symlink)
  end

  task :download_openapi_specs do
    IBM_CLOUD_GEMS.each do |api_gem, openapi_json|
      uri          = URI("https://cloud.ibm.com/apidocs/#{openapi_json}")
      output_file  = openapi_json.sub("/", "-")

      puts "Downloading #{uri}..."

      open(output_file, "w") { |f| download(uri, f) }

      puts "Downloading #{uri}...Complete"
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

  private

  def download(uri, io)
    require "net/http"

    Net::HTTP.start(uri.hostname, uri.port, :use_ssl => uri.scheme == "https") do |http|
      request = Net::HTTP::Get.new(uri)
      request["User-Agent"] = "Not-Ruby"

      http.request(request) do |response|
        if io
          response.read_body { |chunk| io.write(chunk) }
        else
          response.body
        end
      end
    end
  end
end
