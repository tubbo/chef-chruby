action :run do
  ruby_version = new_resource.ruby_version
  command = new_resource.command
  chruby_exec_command = "chruby-exec #{ruby_version} -- '#{command}'"
  run_as_user = new_resource.user || ENV['USER']
  run_as_group = new_resource.group || ENV['USER']

  execute new_resource.name do
    cwd     working_directory
    command chruby_exec_command
    user    run_as_user
    group   run_as_group
  end
end
