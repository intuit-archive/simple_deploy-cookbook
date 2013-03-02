# simple_deploy cookbook
Configure Simple Deploy and provides resources to integrate Simple Deploy stack mgmt into Chef.

# Requirements
* Chef 10.x

# Platform:
* CentOS 6.x
* RHEL 6.x

# Usage
Add the simple_deploy cookbook to your role/run_list.

# Attributes

```node['simple_deploy']['version']``` = Version Of Simple Deploy

# Recipes
## default
Install Simple Deploy Gem Using System Ruby

# Providers
## stack
### create

    simple_deploy_stack "app" do
      action :create
      cookbook "COOKBOOK_TO_LOAD_CLOUD_FORMATION_TEMPLATES"
      environment "SIMPLE_DEPLOY_ENVIRONMENT"
      template "CLOUD_FORMATION_TEMPLATE_NAME"
      inputs { "CloudFormationParameter" => "THE_VALUE" }
      read_outputs_from "CLOUD_FORMATION_OUTPUTS_TO_READ"
    end

* Cookbook can be used to specify a seperate cookbook for Cloud Formation templates.
* Environment defaults to 'default'.
* Template is expected to be in the files directory of the given cookbook (defaults to current cookbook).
* Inputs is a hash of key / values that will be passed as inputs to the Cloud Formation create command.
* read_outputs_from is a list (or single string) of templates to read outputs from which are mapped to inputs

# Authors
* Brett Weaver (@brettweavnet)
* Thomas Bishop (@thbishop)
