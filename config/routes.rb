# frozen_string_literal: true

module Testapp
  class Routes < Hanami::Routes
    # Add your routes here. See https://guides.hanamirb.org/routing/overview/ for details.
    root to: "hello#world"
  end
end
