#2. UnitTests
This adds on a single unit test to the simple project.

*Note*: In order to run the unit tests, Flexmojos needs to be able to find the Flashplayer executable. You should ensure Flashplayer (`Flash Player` on OS X and `Flashplayer.exe` on WinX) is available on your PATH. You can download the standalone Flashplayer *Projector* from [Adobe](http://www.adobe.com/support/flashplayer/downloads.html). In Windows, you can copy Flashplayer.exe to some location and add it to your PATH via `My Computer > Advanced > Environment Variables`. On OS X, I installed `Flash Player` to `usr/local/bin` and added the following to my `~/.bash_profile`

	export FLASH_PLAYER='/usr/local/bin/Flash Player.app/Contents/MacOS'
	export PATH=${M2_HOME}/bin:$FLASH_PLAYER:${PATH}

For more information, check out [this post](https://docs.sonatype.org/display/FLEXMOJOS/Running+unit+tests).