#7. Profiles
This project adds to the SWF and SWC project with additional build parameters.

To run the various profiles.

* A release build (we must manually include flex4.5 as running profiles via the command line will disable the `activeByDefault` property)

		mvn clean install -P release, flex4.5

* Target specific Flex SDK

		mvn clean install -P flex4.1, debug

* Skip coverage

    	mvn clean install -P no-coverage, flex4.5

	
* Alternative flashplayer location for unit tests (automatically enabled whenever that location is valid)	


	

