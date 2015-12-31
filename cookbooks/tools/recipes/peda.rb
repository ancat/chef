execute 'peda_setup' do
  command "echo 'source ~/development/peda/peda.py' > #{ENV['HOME']}/.gdbinit"
  action :nothing
end

git 'peda' do
  repository 'https://github.com/longld/peda.git'
  destination "#{ENV['HOME']}/development/peda"
  revision 'master'
  notifies :run, 'execute[peda_setup]', :immediately
end
