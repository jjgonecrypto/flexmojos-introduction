package org.justinjmoses.flexmojos_intro
{
	import org.flexunit.assertThat;

	public class TestRandomCity
	{
		protected var cities:RandomCity;
		
		[Before]
		public function setUp():void
		{
			cities = new RandomCity();	
		}
		
		[Test]
		public function testGetNext():void
		{
			for (var i:int = 1; i < 100; i++)
				assertThat(cities.next);
		}
		
		[After]
		public function tearDown():void
		{
			cities = null;
		}
	}
}