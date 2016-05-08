require 'spec_helper'
require 'api_constraints'

describe ApiConstraints do
  let(:api_constraints_v1) { ApiConstraints.new(version: 1) }
  let(:api_constraints_v2) { ApiConstraints.new(version: 2, default: true) }
  let(:test_url) {'localhost:3001'}

  describe "matches?" do

    it "returns true when the version matches the 'Accept' header" do
      request = double(host: test_url,
                       headers: {"Accept" => "application/vnd.eco.v1"})
      expect(api_constraints_v1.matches?(request)).to eq true
    end

    it "returns the default version when 'default' option is specified" do
      request = double(host: test_url)
      expect(api_constraints_v2.matches?(request)).to eq true
    end
  end
end
