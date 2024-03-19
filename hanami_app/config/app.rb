# frozen_string_literal: true

require "hanami"
require "yabeda/hanami"

module HanamiApp
  class App < Hanami::App
    Yabeda::Hanami.install!
  end
end
