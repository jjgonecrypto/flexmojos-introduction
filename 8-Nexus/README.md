#8. Nexus
This project moves the project to reference a local Nexus install. 

To use this:

1. Install Nexus on your local machine and start the Nexus process (on OSX it's ./nexus-oss-webapp-[version]-bundle/bin/jsw/macos-universal-[arch]/nexus start)
* Go to Nexus in your browser: [http://localhost:8081/nexus](http://localhost:8081/nexus) and login (default credentials are admin:admin123)
* Select Repositories from the left side bar
* Add the Flexmojos group as a Proxy Repository (use "Flexmojos" as the id/name, use the defaults, and add the following remote location: http://repository.sonatype.org/content/groups/flexgroup)
* Click the Refresh button on the repositories tab
* Select Public Repositories group, choose the Configure tab, and move the new Flexmojos proxy to the box on the left. Save and exit. 

To run the build, execute:

	mvn clean install -s settings.xml 

