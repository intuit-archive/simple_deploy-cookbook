action :create do
  cookbook          = new_resource.cookbook_name ||= self.cookbook_name
  name              = new_resource.name
  environment       = new_resource.environment
  template          = new_resource.template
  inputs            = new_resource.inputs
  read_outputs_from = new_resource.read_outputs_from

  cookbook_object   = self.run_context.cookbook_collection[cookbook]

  cmd = Stack::Create.new.build_command :name              => name,
                                        :environment       => environment,
                                        :cookbook          => cookbook_object,
                                        :template          => template,
                                        :inputs            => inputs,
                                        :read_outputs_from => read_outputs_from


  execute "Creating stack '#{name}'." do
    command cmd
    not_if { Stack::Exists.new.exists? :name        => name,
                                       :environment => environment }
  end
end
