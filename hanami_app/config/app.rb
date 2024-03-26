# frozen_string_literal: true

require "hanami"
require "yabeda"
require "yabeda/hanami"

module HanamiApp
  class App < Hanami::App
    Yabeda.configure!
    raise StandardError unless Yabeda.configured?
    Yabeda::Hanami.install!
    raise StandardError unless Yabeda.hanami
  end
end
