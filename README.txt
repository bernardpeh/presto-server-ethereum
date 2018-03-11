Presto is a distributed SQL query engine. Refer to https://prestodb.io/

this repo is a comination of https://github.com/xiaoyao1991/presto-ethereum and https://github.com/prestodb/presto/tree/master/presto-server for quick start

its using presto-server-0.196 and presto-ethereum master branch

* In etc, `cp node.properties.sample node.properties` and update node.data-dir path.
* confirm you have java 1.8 and python2. Do not use higher version of java or python.
* in etc/catalog/, `cp ethereum.properties.sample ethereum.properties` and configure.
* In the project dir `./cli.sh`
* wait for a while for server to come up. If everything is working, `show tables` should show something.
* check data/var/log for error logs
* to kill process, check process id in data/var/run, then `kill id`
