
include_recipe "python"

# create the python environment - virtualenv

user "atlas" do
  system true
  action :create
  shell "/bin/bash"
end

python_virtualenv "atlas" do
  path "/opt/atlas/"
  owner "atlas"
  group "atlas"
  action :create
  interpreter "python3.4"
end

python_pip "gunicorn" do
  virtualenv "/opt/atlas"
end

# Installation of the application is done via Opsworks
