homework1
=========

This repo is to capture efforts to inventory server level information.

inventory.sh is designed to first validate that you are not executing
as root, and then gather and output hostname, os version, and memory.

The output of $OS, if inputed into the googles, appears to satisfy the
requirement. Though, this can be modified if not satisfactory. 

I have tested this against recent/current builds of CentOS, Ubuntu and
Mac OS. Testing by no means has been exhastive of 'All Unix' criteria,
but is a start.

In order to avoid installing things for such a simple desire, OSX 
10.9.5 required a different method to gather memory info.


## Execution Commands ##

$ ./inventory.sh  

$ sudo ./inventory.sh

