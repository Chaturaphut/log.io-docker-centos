# log.io-docker-centos
Log.io Dockerfile with Centos

#how to use
git clone https://github.com/Chaturaphut/log.io-docker-centos.git </br>
docker build -t log.io . </br>
docker run -it -d -p 28777:28777 -p 28778:28778 log.io </br>

#log
[root@putter log.io]# docker logs 1ad6fe573edb
<pre>/usr/lib/python2.6/site-packages/supervisor-3.1.3-py2.6.egg/supervisor/options.py:296: UserWarning: Supervisord is running as root and it is searching for its configuration file in default locations (including its current working directory); you probably want to specify a "-c" argument specifying an absolute path to a configuration file for improved security.
  'Supervisord is running as root and it is searching '
2015-11-15 07:29:47,934 CRIT Supervisor running as root (no user in config file)
2015-11-15 07:29:47,936 INFO supervisord started with pid 1
2015-11-15 07:29:48,994 INFO spawned: 'log.io' with pid 8
2015-11-15 07:29:50,914 INFO success: log.io entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)</pre>
