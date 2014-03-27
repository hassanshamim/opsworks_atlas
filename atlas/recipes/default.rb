
include_recipe "python"

# create the python environment - virtualenv

user "atlas" do
  system true
  home "/home/atlas/"
  supports :manage_home => true
  action :create
end

python_virtualenv "/opt/atlas" do
  owner "atlas"
  group "atlas"
  action :create
  interpreter "python3.4"
end

python_pip "gunicorn" do
  virtualenv "/opt/atlas"
end

# Installation of the application is done via Opsworks
