module Testapp
  module Actions
    class Hello < Hanami::Action
      class World < TestApp::Action
        def handle(req, res)
          res.body = "Hello, World!"
        end
      end
    end
  end
end