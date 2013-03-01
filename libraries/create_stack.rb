class CreateStack

  include Shared

  def build_command(args)
    name              = args[:name]
    cookbook_object   = args[:cookbook_object]
    environment       = args[:environment]
    template          = args[:template] ||= name
    inputs            = args[:inputs]
    read_outputs_from = Array(args[:read_outputs_from])

    raise cookbook_object.inspect

    template_path     = Template.new(template).location

    cmd = "simple_deploy create -e #{environment}"
    cmd << " -n #{name}"
    cmd << " -t #{template_path}"

    read_outputs_from.each do |stack|
      cmd << " -i #{stack}"
    end

    inputs.each_pair do |key, value|
      cmd << " -a #{key}=#{value}"
    end

    cmd
  end

end
