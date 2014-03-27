name              "atlas"
maintainer        "Hassan Shamim"
maintainer_email  "hshamim@landmarkglobal.com"
description       "Installs the atlas application for Opsworks and the dependencies therefore"
version           "0.0.1"

depends           "python"

recipe "default", "Installs the atlas application dependencies and sets up the environment"

%w{ ubuntu redhat }.each do |os|
  supports os
end
