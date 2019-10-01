# Ba Da Bing
## Hey Linux, we gotcha wallpaper here


    Images are copyright to their respective owners. 
    Bing is a trademark of Microsoft. 
    This application is not affiliated with Bing or its services in any way.

    Usage:
    com.github.darkoverlordofdata.badabing [OPTION?]

    Help Options:
    -h, --help          Show help options

    Application Options:
    --schedule=INT      Run scheduled
    --display           Display the gui
    --update            Update the wallpaper
    --force             Force overwwrite
    --list              List cache content
    --locale=STRING     Locale
    --auto              Auto start

![Screenshot](https://github.com/darkoverlordofdata/badabing/raw/master/Screenshot1.png "Screenshot")

![Screenshot](https://github.com/darkoverlordofdata/badabing/raw/master/Screenshot2.png "Screenshot")

### install

    for ubuntu/elementaryos (https://launchpad.net/~darkoverlordofdata/+archive/ubuntu/badabing)

    sudo add-repository ppa:darkoverlordofdata/badabing
    sudo apt update 
    sudo apt install com.github.darkoverlordofdata.badabing

    otherwise, build from source. Updated to work on Raspbian Buster (rpi3)

### dependancies

    sudo apt install valac -y
    sudo apt install libgtk-3-dev libgranite-dev libjson-glib-dev libappindicator3-dev libsoup2.4-dev libnotify-dev -y

    this app pops up a notification when a new wallpaper is installed. 
    You missed it and want to review it later? 
    Install the indicator-notifications GTK3 applet:

    sudo apt-add-repository ppa:jconti/recent-notifications
    sudo apt update 
    sudo apt install recent-notifications


### build

    meson build --prefix=/usr
    cd build
    ninja
    sudo ninja install

### what's it (supposed to) do?

    get the xml/json from bing, using maximum to determine the # of records to request.
    the 1st entry is the current wallpaper.
    Loop thru, make sure all are in cache, download any that are not.
    Loop thru cache, any that are not in xml should be purged.
    save the xml as the local 'database'

    use gui (--display) to edit preferences, view cache list

    Originally intended to be cross-platform, but in Windows10 this is now a native option, so it's not needed.

### work in progress

    todo:
    * clean cache so it only keeps the last (1-7) days
    * select locale - currently just US. Add preferences: US, UK, DE, CA, AU, FR, CH, JP
    * select size - currently favors watermarked version


### icon

    The icon is from [icons8](https://icons8.com/icon/pack/user%20interface/small)

    [terms](https://community.icons8.com/t/can-i-use-icons8-for-free/30)




### todo

    click to download prior pics from gallery
    icon 14x14  
    logo 64x64
    brand 192x192


### rpi - after building:

    mkdir -p /home/pi/.config/autostart

    cp /home/pi/Documents/GitHub/badabing/data/com.github.darkoverlordofdata.badabing.desktop /home/pi/.config/autostart

    sudo reboot