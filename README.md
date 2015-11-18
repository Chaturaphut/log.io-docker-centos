# log.io-docker-centos
Log.io Dockerfile with Centos

<img src="http://logio.org/screenshot3.png">

#Docker hub
<pre>docker pull putter/log.io-centos</pre>

#Build images from Dockerfile
<pre>
git clone https://github.com/Chaturaphut/log.io-docker-centos.git </br>
docker build -t putter/log.io-centos .</br>
</pre>

#how to use log.io with Docker image
<pre>
docker run -it -d -p 28777:28777 -p 28778:28778 putter/log.io-centos
</pre>

#HTTP Authentication
<pre>
docker run -it -e "PASSWORD=123456" -d -p 28778:28778 -p 28777:28777 putter/log.io-centos
</pre>

#Login
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
