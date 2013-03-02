class Execute

  def run(cmd, log_level='info')
    Logger.log "Executing command: '#{cmd}'.", log_level
    `#{cmd}`
    if $?.success?
      Logger.log "Command completed succesfully.", log_level
      true
    else
      Logger.log "Command returned failure.", log_level
      false
    end
  end

end
