# Sway Nasa Astronomy Picture of the Day background

This script sets your Sway background to Nasa's [Astronomy Picture of the Day][0].

usage:

```console
$ /path/to/sway-nasa-apod/nasa-apod.sh --help
Usage: nasa-apod.sh [-h] [-r]

set Sway background to Nasa Astronomy Picture of the Day

optional arguments:
  -h, --help            show this help message and exit
  -r, --monrad          pick random day from the archive, url saved to /path/to/sway-nasa-apod//last_random_url
```

Depending on your needs, you will want to configure the script to run at startup or set up a cronjob or systemd timer.  Personally, I set a systemtd timer for 06:00 UTC and have the following in my Sway configuration file:

```dosini
output * background /path/to/sway-nasa-apod/nasa-apod.jpg center #323232
```


[0]: https://apod.nasa.gov/apod/
