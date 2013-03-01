class StackExists

  def exists?(args)
    name              = args[:name]
    environment       = args[:environment]

    `simple_deploy status -e #{environment} -n #{name}`
    $?.success?
  end

end
