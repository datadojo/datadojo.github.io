# FAQ

Most common problems from Data Dojo study group.

## Run pyspark with ipython:

```
IPYTHON=1 ./bin/pyspark
```

## Windows paths:

Directories are seperated by `\\`, not `\`.

## Switch off verbose logs

* In `spark/conf` directory copy or rename `log4j.properties.template` to `log4j.properties`
* Edit `log4j.properties` and on line 2 change `log4j.rootCategory=INFO, console` to `log4j.rootCategory=WARN, console`

## Run cluster with more memory

To fix issue with: `java.lang.OutOfMemoryError` run spark with `--driver-memory` argument:

```
./bin/pyspark --driver-memory 1G
```