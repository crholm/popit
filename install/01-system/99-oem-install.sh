# Get the system model name
model_name=$(sudo dmidecode -s system-product-name)

# Check if the model name contains "XPS 9315"
if [[ "$model_name" == *"XPS 9315"* ]]; then
    echo "Installing Intel IPU6 drivers for XPS 9315 (camera)"

#    sudo add-apt-repository ppa:oem-solutions-engineers/oem-projects-meta
#    sudo apt install oem-somerville-psyduck-meta

#https://askubuntu.com/questions/1428961/dell-xps-13-webcam-not-recognized-under-ubuntu-22-04-1

# This should work, but since Dell and Intel doesn't give a shit about people buying its stuff
# it does not work
#sudo add-apt-repository -y ppa:oem-solutions-group/intel-ipu6
#sudo apt install -y libcamhal-ipu6ep0
#

echo " - Adding repo"
sudo add-apt-repository -y ppa:oem-solutions-group/intel-ipu6
#echo " - Installing"
#sudo apt install -y  libcamhal-ipu6ep0 linux-modules-ipu6-generic-hwe-22.04 linux-modules-ivsc-generic-hwe-22.04

echo " - Installing versioned"
sudo apt install -y linux-generic-hwe-24.04 linux-headers-generic-hwe-24.04
echo " - Installing versioned ipu6"
sudo apt install -y linux-modules-ipu6-oem-24.04 linux-modules-ipu6-oem-24.04a ## linux-modules-ipu6-6.8.0-32-generic # Alts linux-modules-ipu6-oem-24.04 linux-modules-ipu6-oem-24.04a
echo " - Reinstalling"
sudo apt reinstall -y intel-ipu6-dkms

#https://github.com/intel/ipu6-drivers/issues/228
#https://www.dell.com/community/en/conversations/linux-general/xps-13-9315-webcam-not-working-on-linux-ubuntu-2204/64c105fcf4ccf8a8decf4396


## Is kernal to old?
#mkdir /tmp/webcam
#cd /tmp/webcam
#git clone https://github.com/intel/ipu6-drivers.git
#cd ipu6-drivers
#git clone https://github.com/intel/ivsc-driver.git
#cp -r ivsc-driver/backport-include ivsc-driver/drivers ivsc-driver/include .
#rm -rf ivsc-driver
#sudo dkms add .
#sudo dkms autoinstall ipu6-drivers/0.0.0


fi