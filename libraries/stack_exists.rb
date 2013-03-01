class StackExists

  include Shared

  def exists?(args)
    name              = args[:name]
    environment       = args[:environment]

    result = shell "simple_deploy status -e #{environment} -n #{name}"

    if result
      log "Stack exists."
      true
    else
      log "Stack does not exist."
      false
    end
  end

end
