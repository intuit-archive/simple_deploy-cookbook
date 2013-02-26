action :create do
  name              = new_resource.object_name
  environment       = new_resource.environment
  template          = new_resource.template
  inputs            = new_resource.inputs
  read_outputs_from = new_resource.read_outputs_from

  cmd = "simple_deploy create -e #{environment} \
                              -n #{name} \
                              -t #{template}"

  read_outputs_from.each do |stack|
    cmd << " -i #{stack}"
  end

  inputs.each_pair do |key, value|
    cmd << " -a #{key}=#{value}"
  end

  execute "Creating stack '#{name}'." do
    command cmd
  end
end
