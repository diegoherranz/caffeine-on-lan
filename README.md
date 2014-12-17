caffeine-on-lan
===============

Power on a server after a power shortage using Wake-On-Lan.

Scenario
--------

  - A server which has to remain always on.
  - That server can't go back online by itself (for whatever reason) after a power shortage.
  - Run this script on a second device (did I hear Raspberry Pi?) to bring your server back to life.
  - The second device is OFF all the time except after a shortage when it boots up, wakes the server and turns itself off again. The second device doesn't have to be a low-power device because it'll be OFF almost all the time. It should have a low stand-by power consumtion, though.

Requirements
------------

  - A device that turns on automatically when power is restored (Raspberry Pi does) to be used as second device.
  - `wakeonlan` utility (`sudo apt-get install wakeonlan` on Debian-based OSes).
  
Usage
-----

On the low-consumption device:
  
  - Populate [/etc/ethers](http://unixhelp.ed.ac.uk/CGI/man-cgi?ethers) and [/etc/hosts](http://en.wikipedia.org/wiki/Hosts_%28file%29).
  - Add the script to your `root` user crontab:
    - `sudo crontab -e`
    - Add line: `@reboot /path-to-caffeine-on-lan/caffeine_on_lan.sh SERVER_NAME` (Replace `SERVER_NAME` with your machine name).

On the server which has to remain ON:
  - Enable wake-on-lan on BIOS and OS.
