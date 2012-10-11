## Configuration for lab machines running Ubuntu 12.04 "Precise Pangolin"

### Eclipse
 * To run a Java web project on a local Tomcat server, use the console command
   `tomcat7-instance-create`, then define a new **Server &rarr; Apache &rarr;
   Tomcat v7.0 Server** in Eclipse

### Installation Prerequisites
 * Machine MAC address must be added to server config `/etc/dhcp/meet-lab.conf`
   (the MAC address is displayed during the first step below)
 * After updating this file, restart DHCP: `service isc-dhcp-server restart`

### Automatic Network Installation
 * Boot from the network by rebooting and holding down `F12`
 * If the machine's MAC address was added to `/etc/dhcp/meet-lab.conf`,
   you should see the "Erase & Install" screen
 * Press `Enter` to begin
 * For a *first-time dual-boot installation*:
   * You should see the option to "resize partition #2 and use freed space"
     -- *make sure it reads "partition #2"*
   * Choose this option
   * Continue, then enter a new partition size of `100 GB`
   * The installer should confirm: partition #5 as ext4 & #6 as swap
 * For a *dual-boot re-installation*:
   * *Do not* choose the option to resize partition #5
   * Choose "Manual"
   * Go down to the line with "#5", press `Enter`
   * Select "Use as", and select "Ext4"
   * Go down to "Format the partition" and press `Enter` to switch to "yes"
   * And for "Mount point", select `/`
   * Select "Done"
   * Go down to "#6", press `Enter`, and "Use as" "swap area", then "Done"
     -- *yes, even though swap was already selected*
   * Select "Finish partitioning"
   * The installer should confirm: partition #5 as ext4 & #6 as swap
 * And for a *Linux-only installation*, choose "use entire disk"
 * At the end of the installation, reboot
