#13. Custom RSL
This project illustrates two various custom RSL techniques. 

In order for this to work, you must first install the robotlegs SWC. 

	mvn install:install-file -Dfile=./libs/robotlegs-framework-1.5.1.swc -DgroupId=org.robotlegs -DartifactId=robotlegs-framework -Dversion=1.5.1 -Dpackaging=swc

then the RSL (which is just the optimized library.swf from the unpacked SWC)

	mvn install:install-file -Dfile=./libs/robotlegs-framework-1.5.1.swf -DgroupId=org.robotlegs -DartifactId=robotlegs-framework -Dversion=1.5.1 -Dpackaging=swf

then you can run 

	mvn clean install

