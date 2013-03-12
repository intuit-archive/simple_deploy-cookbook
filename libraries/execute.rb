class Execute

  def run(cmd)
    Chef::Log.info "Executing command: '#{cmd}'."
    `#{cmd}`
    Chef::Log.debug "Command returned #{$?.to_i}."
    $?.success?
  end

end
