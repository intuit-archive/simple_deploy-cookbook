class Execute

  def run(cmd)
    Chef::Log.send 'info', "Executing command: '#{cmd}'."
    `#{cmd}`
    Chef::Log.send 'debug', "Command returned #{$?.to_i}."
    if $?.success?
      true
    else
      false
    end
  end

end
