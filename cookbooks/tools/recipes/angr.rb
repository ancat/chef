package "python-dev" do
    action :upgrade
end

package "libffi-dev" do
    action :upgrade
end

execute 'pip_install_angr' do
    command "pip install angr --upgrade"
    action :run
end
