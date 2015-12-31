git "capstone" do
    repository "https://github.com/aquynh/capstone"
    action :sync
    destination "#{ENV['HOME']}/development/capstone"
    notifies :run, 'execute[compile_capstone]', :immediately
    notifies :run, 'execute[install_capstone_bindings]', :immediately
end

execute "compile_capstone" do
    cwd "#{ENV['HOME']}/development/capstone"
    command "./make.sh install"
    action :nothing
end

execute "install_capstone_bindings_python3" do
    cwd "#{ENV['HOME']}/development/capstone/bindings/python"
    command "python3 setup.py install"
    action :nothing
end

execute "install_capstone_bindings" do
    cwd "#{ENV['HOME']}/development/capstone/bindings/python"
    command "python setup.py install"
    action :nothing
end
