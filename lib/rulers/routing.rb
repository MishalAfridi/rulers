module Rulers
  class Application
    def get_controller_and_action(env)
      _, resource, action, _after = env[PATH_INFO].split('/', 4)

      controller_name = resource.capitalize << "Controller"

      [Object.const_get(controller_name), action]
    end
  end
end