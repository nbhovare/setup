# Main file add your files name with sh filename.sh || ./file.sh to run them

# Index
# 1. Update System
# 2. Install Pre-Requisite
# 3. Install Jenkins

# Update System
# Start of file do not write anything above this write below
sudo apt update -y && sudo apt upgrade -y

######### Your Code Here #############

# Install Pre-Required packages ~ Always place other files below this file that's why its names as Pre-Requisite
sudo sh pre.sh

# Install Jenkins
sudo sh jenkins.sh

######### Your Code Here #############

# End of file do not write anything beyond this write above
sudo apt update -y && sudo apt upgrade -y

