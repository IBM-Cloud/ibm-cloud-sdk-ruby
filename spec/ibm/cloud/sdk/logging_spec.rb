require 'ibm-cloud-sdk'
require 'rspec'

RSpec.describe 'test ibm-cloud-sdk logging'  do
  let(:log_output) { StringIO.new }

  before do
    IBM::Cloud::SDK.logger = Logger.new(log_output)
  end

  after do
    IBM::Cloud::SDK.logger = nil
  end

  context "IBM::Cloud::SDK.logger" do
    it "log to info" do
      IBM::Cloud::SDK.logger.info("Hello, IBM Cloud!")

      log_output.rewind
      expect(log_output.read).to end_with("Hello, IBM Cloud!\n")
    end
  end

  context "#logger" do
    let(:mock_instance) do
      Class.new do
        include IBM::Cloud::SDK::Logging
      end.new
    end

    it "log to info" do
      mock_instance.logger.info("Hello, IBM Cloud!")

      log_output.rewind
      expect(log_output.read).to end_with("Hello, IBM Cloud!\n")
    end
  end
end

