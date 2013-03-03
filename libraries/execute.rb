class Execute

  def run(cmd)
    Logger.log "Executing command: '#{cmd}'."
    `#{cmd}`
    Logger.log "Command return #{$?}."
    if $?.success?
      true
    else
      false
    end
  end

end
