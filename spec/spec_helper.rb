# frozen_string_literal: true

require "pathname"
SPEC_ROOT = Pathname(__dir__).realpath.freeze

require "bundler/setup"
require "debug"
require "yabeda/hanami"
require "yabeda/rspec"

ENV["HANAMI_ENV"] ||= "test"
require "hanami/prepare"

require_relative "support/rspec"
require_relative "support/features"
require_relative "support/requests"

require_relative "support/hanami_app"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  Kernel.srand config.seed
  config.order = :random

  config.before(:suite) do
    Yabeda::Hanami.install!
  end
end
