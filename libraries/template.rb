class Template

  def location(args)
    name     = args[:name]
    cookbook = args[:cookbook]

    cookbook.file_filenames.each do |file|
      return file if file =~ /^.*#{name}\.json$/
    end

    msg = "Cloud Fromation Template #{name} not found."

    raise Exceptions::TemplateNotFound.new msg
  end

end
