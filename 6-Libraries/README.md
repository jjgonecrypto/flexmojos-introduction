#6. Libraries
This project splits the functionality of the other projects into an application SWF and a library SWC. 

To process, simply run an install on the base POM (both the SWF and the SWC have their own POMs that are referenced via `module` definitions in the parent POM). 

	mvn clean install

