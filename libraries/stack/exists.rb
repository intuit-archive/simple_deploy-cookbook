module Stack
  class Exists

    def exists?(args)
      environment = args[:environment]
      name        = args[:name]

      execute = Execute.new

      result = execute.run "simple_deploy status -e #{environment} -n #{name}"

      if result
        Logger.log "Stack exists."
        true
      else
        Logger.log "Stack does not exist."
        false
      end
    end

  end
end
