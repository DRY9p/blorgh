module Blorgh
  class FooController < ApplicationController
    include Engine.routes.url_helpers

    setup do
      @routes = Engine.routes
    end

    # etc
  end
end

