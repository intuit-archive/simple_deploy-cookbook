actions :create, :manage

attribute :environment, :kind_of => String, :default => 'default'
attribute :inputs, :kind_of => Hash
attribute :object_name, :kind_of => String
attribute :read_output_from, :kind_of => Array
attribute :template, :kind_of => String
