action :run do
  ruby_version = new_resource.ruby_version
  command = new_resource.command
  chruby_exec_command = "chruby-exec #{ruby_version} -- '#{command}'"

  execute new_resource.name do
    cwd working_directory
    command chruby_exec_command
  end
end
