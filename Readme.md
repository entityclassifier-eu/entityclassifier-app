![logo](https://docs.google.com/drawings/d/1pSLyXRntuzlYuuBHwoUJwP8Zqcu9NgsQtuqT-hdbrlA/pub?w=611&amp;h=100)

The Web application for the Entityclassifier.eu
---------------------------------------------

Entityclassifier.eu (also known as THD) is a named entity recognizer whici performs pattern-based entity spotting, entity linking with the DBpedia (resp. Wikipedia) and YAGO knowledge bases, and unsupervised entity classification with classes from the DBpedia and YAGO ontologies.

**Quick links:**

- Online demo [here](http://entityclassifier.eu/thd/).

This is the Web applicatin running on top of the REST API.

**Installation instructions:**

### Start the application in embedded Glassfish Web server.
```sh
$ mvn clean
$ mvn package
$ mvn embedded-glassfish:run
```

License
------

Licensed under the [GNU General Public License Version 3 (GNU GPLv3)](http://www.gnu.org/licenses/gpl.html).

Copyright (c) 2012-2015 Milan Dojchinovski (<milan.dojchinovski@fit.cvut.cz>)
