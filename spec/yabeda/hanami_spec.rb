# frozen_string_literal: true
# 
require "yabeda/hanami"

RSpec.describe Yabeda::Hanami do
  it "has a version number" do
    expect(described_class::VERSION).not_to be nil
  end

  it "has a config" do
    expect(described_class.config).not_to be nil
  end
end
