# frozen_string_literal: true

module HanamiApp
  module Actions
    module Hello
      class World < HanamiApp::Action
        def handle(request, response)
          raise StandardError unless Yabeda.hanami

          response.body = Yabeda.hanami.name.to_s
        end
      end
    end
  end
end
