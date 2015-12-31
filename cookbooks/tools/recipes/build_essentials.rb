package "python-pip" do
    action :upgrade
end

package "build-essential" do
    action :upgrade
end

package "valgrind" do
    action :upgrade
end

package "make" do
    action :upgrade
end
