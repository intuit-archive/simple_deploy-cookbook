class StackExists

  def build_command(args)
    name              = args[:name]
    environment       = args[:environment]

    "simple_deploy status -e #{environment} -n #{name}"
  end

end
