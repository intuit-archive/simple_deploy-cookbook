actions :create

attribute :environment, :kind_of => String, :default => nil
attribute :inputs, :kind_of => Hash
attribute :object_name, :kind_of => String
attribute :read_outputs_from, :kind_of => Array
attribute :template, :kind_of => String, :default => nil
