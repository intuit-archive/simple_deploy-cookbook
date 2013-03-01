class StackExists

  include Run

  def exists?(args)
    name              = args[:name]
    environment       = args[:environment]

    shell "simple_deploy status -e #{environment} -n #{name}"
  end

end
