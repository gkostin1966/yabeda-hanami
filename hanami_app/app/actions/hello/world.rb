require "yabeda/hanami"

module HanamiApp
  module Actions
    module Hello
      class World < HanamiApp::Action
        def handle(req, res)
          event =Yabeda::Hanami::Event.new()
          Yabeda.hanami.request_total.increment(event.labels)
          res.render :json, {message: 'Hello World!'}
        end
      end
    end
  end
end