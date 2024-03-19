# frozen_string_literal: true

require "hanami"

module Testapp
  class App < Hanami::App
    Yabeda::Hanami.install!
  end
end
