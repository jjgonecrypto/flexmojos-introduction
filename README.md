# Flexmojos Introduction: Usage instructions
This collection of examples provides some simple introductions to using Flexmojos.

For each project you can build via:

	mvn clean install 
	
This will create a SWF in the `target` folder of the respective diretory.

## Versions
Flexmojos target: *4.0-RC2*. Checkout the [full plugin info](https://repository.sonatype.org/content/sites/maven-sites/flexmojos/4.0-RC2/plugin-info.html).

Flex SDK: *4.5.1.21328*

## Project breakdown

### 1. Simple
This is an extremely simple project, designed simply as an example to get started.

### 2. UnitTests
This adds on a single unit test to the simple project.

*Note*: In order to run the unit tests, Flexmojos needs to be able to find the Flashplayer executable. You should ensure Flashplayer (`Flash Player` on OS X and `Flashplayer.exe` on WinX) is available on your PATH. You can download the standalone Flashplayer *Projector* from [Adobe](http://www.adobe.com/support/flashplayer/downloads.html). In Windows, you can copy Flashplayer.exe to some location and add it to your PATH via `My Computer > Advanced > Environment Variables`. On OS X, I installed `Flash Player` to `usr/local/bin` and added the following to my `~/.bash_profile`

	export FLASH_PLAYER='/usr/local/bin/Flash Player.app/Contents/MacOS'
	export PATH=${M2_HOME}/bin:$FLASH_PLAYER:${PATH}

For more information, check out [this post](https://docs.sonatype.org/display/FLEXMOJOS/Running+unit+tests).

### 3. Dependencies
This adds on a simple third party dependency to the simple project. In order to build this, you must first `install` the as3-signals dependency (see above).  

To install the third party dependency, you need to run the following command from the project root: 

	mvn install:install-file -Dfile=./libs/as3-signals-0.8.swc -DgroupId=org.osflash -DartifactId=as3-signals -Dversion=0.8 -Dpackaging=swc

This will add the SWC to your local repository to ensure Maven can find it whenever it encounters the dependency.

For more information on as3-signals, [checkout the project home](https://github.com/robertpenner/as3-signals/).


### 4. Flashbuilder Goal
This combines the unit tests and dependencies project. 

Try generating a Flashbuilder project via the following Maven command:

	mvn org.sonatype.flexmojos:flexmojos-maven-plugin:3.9:flashbuilder
	
### 5. Archetypes 
This is a collection of commands to generate simple starter projects for Flexmojos.

### 6. Libraries
This project splits the functionality of the other projects into an application SWF and a library SWC. 

