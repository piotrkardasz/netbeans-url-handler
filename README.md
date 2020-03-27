# Netbeans URL Handler
This package contains a launcher to open files in NetBeans at the defined line
number and an associated desktop file that conforms to the Desktop Entry
Specification for use in Gnome and KDE desktop environments.
Designed for productivity during developing Symfony Projects.
---
Thanks to Author of PHPStorm URL Handler - Stefan Auditor <stefan.auditor@erdfisch.de> 

Repository: [sanduhrs/phpstorm-url-handler](https://github.com/sanduhrs/phpstorm-url-handler)

Inspired by PHPStorm URL Handler project implementation of NetBeans URL Handler was created using NetBeans [CLI](http://wiki.netbeans.org/TS_60_CLI)

---

## Installation
Create symlink for netbeans executable e.g.: 
```
ln -sfn /usr/local/netbeans-11.3/netbeans/bin/netbeans /usr/bin/netbeans
```
Install via bash script [install.sh](install.sh):
```
bash ./install.sh
```

## Usage with Symfony Projects
Follow the [Symfony docs](https://symfony.com/doc/master/reference/configuration/framework.html#ide)
```yaml
framework:
    ide: 'netbeans://open?file=%%f&line=%%l&/var/www/app/>/projects/my_project/'
```

## Usage

It can be used to open files at the specified line from within the browser by 
placing a link of the following kind in the markup:

    <?php
    $file = "/path/to/filename.php";
    $line = 35;
    print "<a href='netbeans://open?url=file://$file&line=$line'>Open with Netbeans</a>";
    print "<a href='netbeans://open?file=$file&line=$line'>Open with Netbeans</a>";
    ?>

## Command-line usage

    FILE="/path/to/filename.php"
    LINE=35
    ./netbeans-url-handler "netbeans://open?url=file://${FILE}&line=${LINE}"


This alternative syntax matches the format used by
Netbeans for the Macintosh for cross-platform compatibility.

    FILE="/path/to/filename.php"
    LINE=35
    ./netbeans-url-handler "netbeans://open?file=${FILE}&line=${LINE}"


## License

GNU GENERAL PUBLIC LICENSE
