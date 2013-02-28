action :create do
  name              = new_resource.object_name
  environment       = new_resource.environment
  template          = new_resource.template
  inputs            = new_resource.inputs
  read_outputs_from = new_resource.read_outputs_from

  cmd = CreateStack.new.build_command :name              => name,
                                      :environment       => environment,
                                      :template          => template,
                                      :inputs            => inputs,
                                      :read_outputs_from => read_outputs_from

  execute "Creating stack '#{name}'." do
    command cmd
    not_if StackExists.build_command :name        => name,
                                     :environment => environment
  end
end
