execute 'radare_setup' do
  command "#{ENV['HOME']}/development/radare/sys/install.sh"
  action :nothing
end

git 'radare' do
  repository 'https://github.com/radare/radare2.git'
  destination "#{ENV['HOME']}/development/radare"
  revision 'master'
  notifies :run, 'execute[radare_setup]', :immediately
end

