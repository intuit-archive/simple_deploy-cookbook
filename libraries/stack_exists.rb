class StackExists

  def exists?(args)
    name              = args[:name]
    environment       = args[:environment]

    shell 'simple_deploy status -e #{environment} -n #{name}'
  end

  def shell(cmd, log_level='info')
    Chef::Log.send log_level, cmd
    `#{cmd}`
    $?.success?
  end


end
