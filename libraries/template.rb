class Template

  def location(args)
    name     = args[:name]
    cookbook = args[:cookbook]

    cookbook.file_filenames.each do |file|
      return file if file =~ /^.*#{name}\.json$/
    end

    raise TemplateNotFound.new "Template #{name} not found."
  end

end
