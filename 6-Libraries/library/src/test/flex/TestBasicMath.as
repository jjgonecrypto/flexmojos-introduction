package 
{
	import org.flexunit.asserts.assertTrue;

	public class TestBasicMath
	{
		private var instance:BasicMath;
		private const testNumber:Number = Math.PI;
		
		[Before]
		public function setUp():void
		{
			instance = new BasicMath(testNumber);
		}

		[Test]
		public function test_multiply():void
		{
			const nbr:Number = 12345;
			
			const result:Number = instance.multiply(nbr);
			
			assertTrue(nbr * testNumber == result);
		}
	}
}