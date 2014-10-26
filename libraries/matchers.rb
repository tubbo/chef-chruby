if defined? ChefSpec
  def execute_chruby_command(command, version: 'embedded')
    ChefSpec::Matchers::ResourceMatcher.new \
      :execute, :run, "chruby-exec #{version} -- '#{command}'"
  end
end
