# Sway Nasa Astronomy Picture of the Day background

This script sets your Sway background to Nasa's [Astronomy Picture of the Day][0].

usage:

```console
/path/to/nasa-apod.sh /path/to/writable/image/directory

```

Depending on your needs, you will want to configure the script to run at startup or set up a cronjob or systemd timer.  Personally, I set a systemtd timer for 06:00 UTC and have the following in my Sway configuration file:

```
output * background /path/to/writable/image/directory/nasa-apod.jpg center #323232
```


[0]: https://apod.nasa.gov/apod/
