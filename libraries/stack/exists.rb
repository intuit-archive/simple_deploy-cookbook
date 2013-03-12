module Stack
  class Exists

    def exists?(args)
      environment = args[:environment]
      name        = args[:name]

      execute = Execute.new

      result = execute.run "simple_deploy status -e #{environment} -n #{name}"

      if result
        Chef::Log.send "info", "Stack exists."
        true
      else
        Chef::Log.send "info", "Stack does not exist."
        false
      end
    end

  end
end
