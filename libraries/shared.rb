module Shared

  def shell(cmd, log_level='info')
    log log_level, "Executing command: '#{cmd}'."
    `#{cmd}`
    if $?.success?
      log "Command completed succesfully.", log_level
      true
    else
      log "Command returned failure.", log_level
      false
    end
  end

  def log(message, log_level='info')
    Chef::Log.send log_level, message
  end

end
