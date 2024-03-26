# frozen_string_literal: true

module Yabeda
  module Hanami
    # yabeda-hanami configuration
    class Config < Yabeda::Config
      config_name :yabeda_hanami

      attr_config :apdex_target
      # attr_config controller_name_case: :snake
    end
  end
end
