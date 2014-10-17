# Packer templates - http://packer.io
For use with vagrant and virtualbox

## Fedora 20 build
Basic dev box with Chef, VirtualBox guest additions, and vagrant public keys

**Instructions**

1. Get the prerequisites
  * VirtualBox - https://www.virtualbox.org/
  * Vagrant - http://www.vagrantup.com/
  * vagrant-vbguest - https://github.com/dotless-de/vagrant-vbguest
  * Packer - http://www.packer.io/
2. Create a 'build' folder
3. Build the box
> packer build fedora-20-x86_64.json
4. The resulting 'box' located within the build directory can be used with vagrant and virtualbox

### Vagrant Example - Tomcat build
1. Make sure you have built the box with packer, step 3
2. cd into tomcat_example
3. vagrant up
4. Add an application to the webapps folder
5. Go to http://127.0.0.1:8888
