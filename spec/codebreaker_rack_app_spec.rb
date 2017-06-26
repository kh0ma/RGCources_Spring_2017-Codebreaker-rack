require "spec_helper"

RSpec.describe CodebreakerRackApp do
  it "has a version number" do
    expect(CodebreakerRackApp::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
