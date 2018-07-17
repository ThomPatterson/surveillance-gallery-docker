# surveillance-gallery-docker

Containerized version of the [surveillance-gallery](https://github.com/ThomPatterson/surveillance-gallery) application.  

Mount your directories containing the images to the volume `/usr/data/images` (e.g. `/usr/data/images/backyard`).

Set the `CONFIG` ENV to a flattened JSON array with an object for each volume you mounted.  For example:

```
[{"name":"Backyard","directory":"/usr/data/images/backyard","fileExt":".jpg","daysToFetch":7},{"name":"Breezeway","directory":"/usr/data/images/breezeway","fileExt":".jpg","daysToFetch":7},{"name":"Driveway","directory":"/usr/data/images/driveway","fileExt":".jpg","daysToFetch":7}]
```

Set the `TZ` ENV to the time zone you are in.  [Full list of time zones](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)

Port 8080 is exposed from the container.
