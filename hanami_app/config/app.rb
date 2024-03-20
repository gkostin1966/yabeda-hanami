# frozen_string_literal: true

require "hanami"
require "yabeda"
require "yabeda/hanami"

module HanamiApp
  class App < Hanami::App
    # Yabeda.configure do
    #   group :hanami
    # end
    # Yabeda::install!
    Yabeda.configure!
    raise StandardError unless Yabeda.configured?
    Yabeda::Hanami.install!
    raise StandardError unless Yabeda.hanami
  end

  App.monitor("hello.world") do |event|
    App.logger.debug "Hello World! #{event.payload} in #{event[:time]}ms"
  end
end
