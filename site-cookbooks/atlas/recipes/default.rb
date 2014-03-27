
include_recipe "python"

# create the python environment - virtualenv
python_virtualenv "/opt/atlas" do
  owner "ubuntu"
  group "ubuntu"
  action :create
  interpreter "python3.4"
end

python_pip "gunicorn" do
  virtualenv "/opt/atlas"
end

# Installation of the application is done via Opsworks
