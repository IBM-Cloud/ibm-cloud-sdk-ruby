require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :openapi do
  IBM_CLOUD_GEMS = {
    "activity-tracker"    => "activity-tracker.json",
    "global_tagging"      => "tagging.json",
    "iam"                 => "iam-identity-token-api.json",
    "power-cloud"         => "power-cloud.json",
    "resource_controller" => "resource-controller/resource-controller.json",
  }

  task :download_openapi_specs do
    IBM_CLOUD_GEMS.each do |api_gem, openapi_json|
      uri          = URI("https://cloud.ibm.com/apidocs/#{openapi_json}")
      output_file  = openapi_json.sub("/", "-")

      puts "Downloading #{uri}..."

      open(output_file, "w") { |f| download(uri, f) }

      puts "Downloading #{uri}...Complete"
    end
  end

  task :generate => :download_openapi_specs do
    IBM_CLOUD_GEMS.each do |api_gem, openapi_json|
      openapi_json.sub!("/", "-")
      output_path    = Pathname.new("lib/ibm_cloud")
      openapi_sdkgen = Pathname.new("openapi-sdkgen/openapi-sdkgen.sh")

      system("#{openapi_sdkgen} generate -g ibm-ruby -i #{openapi_json} -o #{output_path} --additional-properties moduleName=IBMCloud")
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
