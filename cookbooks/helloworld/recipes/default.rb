file "/tmp/helloworld.txt" do
  owner "root"
  group "root"
  mode 00544
  action :create
  content "Hello, Implementor!"
end
