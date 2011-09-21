#3. Dependencies
This project adds on a simple third party dependency to the simple project. In order to build this, you must first `install` the as3-signals dependency (see above).  

To install the third party dependency, you need to run the following command from the project root: 

	mvn install:install-file -Dfile=./libs/as3-signals-0.8.swc -DgroupId=org.osflash -DartifactId=as3-signals -Dversion=0.8 -Dpackaging=swc
	
This will add the SWC to your local repository to ensure Maven can find it whenever it encounters the dependency.

For more information on as3-signals, [checkout the project home](https://github.com/robertpenner/as3-signals/).
