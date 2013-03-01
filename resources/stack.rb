actions :create
default_action :create

attribute :environment, :kind_of => String, :default => 'default'
attribute :inputs, :kind_of => Hash
attribute :object_name, :kind_of => String
attribute :read_outputs_from, :kind_of => [Array, String]
attribute :template, :kind_of => String, :default => nil
