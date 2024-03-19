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
