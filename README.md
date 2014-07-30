caffeine-on-lan
===============

Power on a server after a power shortage using Wake-On-Lan

Scenario
--------

  - A server which has to remain always on.
  - That server can't go back online by itself (for whatever reason) after a power shortage.
  - Run this script on a low-consumption device (did I hear Raspberry Pi?) to bring your server back to life.
  - The low-consumption device is off all the time except after a shortage when it boots up, wakes the server and turns itself off again.

Requirements
------------

  - A device that turns on automatically when power is restored (Raspberry Pi does).
  - `wakeonlan` utility (`sudo apt-get install wakeonlan`on Debian-based OSes).
  
Usage
-----

On the low-consumption device:
  
  - Populate [/etc/ethers](http://unixhelp.ed.ac.uk/CGI/man-cgi?ethers) and [/etc/hosts](http://en.wikipedia.org/wiki/Hosts_%28file%29).
  - Add the script to your `root` user crontab:
    - `sudo crontab -e`
    - Add line: `@reboot /path-to-caffeine-on-lan/caffeine_on_lan.sh`
 
