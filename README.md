# log.io-docker-centos
Log.io Dockerfile with Centos

#how to start log.io
<pre>
git clone https://github.com/Chaturaphut/log.io-docker-centos.git </br>
docker build -t putter/log.io-centos .</br>
docker run -it -d -p 28777:28777 -p 28778:28778 putter/log.io-centos </br>
</pre>

#HTTP Authentication
<pre>
git clone https://github.com/Chaturaphut/log.io-docker-centos.git </br>
docker build -t putter/log.io-centos .</br>
docker run -it -e "PASSWORD=123456" -d -p 28778:28778 -p 28777:28777 putter/log.io-centos
</pre>

#docker hub
<pre>docker pull putter/log.io-centos</pre>

#Username
<pre>
User : admin
Pass : ***** (use docker -e for setting your password)
</pre>

#logs
<pre>
[root@putter log.io]# docker logs 3631c99650e5
2015-11-18 20:09:03,418 CRIT Supervisor running as root (no user in config file)
2015-11-18 20:09:03,431 INFO supervisord started with pid 8
2015-11-18 20:09:04,488 INFO spawned: 'log.io' with pid 11
2015-11-18 20:09:06,339 INFO success: log.io entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
</pre>
