require "rulers/version"
require "rulers/routing"

module Rulers
  class Application
    def call(env)
      controller, action = get_controller_and_action(env)
      content = controller.new(env).send(action)

      [200, {'Content-Type' => 'text/html'}, [content]]
    end
  end

  class Controller
    attr_reader :env

    def initialize(env)
      @env = env
    end
  end
end
