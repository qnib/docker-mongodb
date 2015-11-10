
mongodb: terminal
	DTAG=latest
	GBRANCH=master
	cd ~/docker/docker-$@; $(DBUILD) qnib/$@:$(DTAG) .
