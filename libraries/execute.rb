class Execute

  def run(cmd)
    Logger.log "Executing command: '#{cmd}'."
    `#{cmd}`
    if $?.success?
      Logger.log "Command completed succesfully."
      true
    else
      Logger.log "Command returned failure."
      false
    end
  end

end
