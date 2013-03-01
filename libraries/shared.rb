module Shared

  def shell(cmd, log_level='info')
    log log_level, "Executing command: '#{cmd}'."
    `#{cmd}`
    if $?.success?
      log "Command completed succesfully."
      true
    else
      log "Command return failure."
      false
    end
  end

  def log(level, message)
    Chef::Log.send log_level, message
  end

end
