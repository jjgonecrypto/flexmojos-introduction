package org.justinjmoses.flexmojos_intro.dependencies
{
	public class RandomCity
	{
		private const cities:Array = 
			[	'Santiago, Chile', 
				'Sydney, Australia', 
				'San Francisco, US', 
				'London, England', 
				'Paris, France',
				'Buenos Aires, Argentina',
				'Rio de Janerio, Brazil',
				'Lima, Peru',
				'Lisbon, Portugal',
				'Barcelona, Spain',
				'Athens, Greece',
				'Moscow, Russia' 
			]
			
		public function get next():String
		{
			const index:int = Math.round(Math.random() * cities.length)
			
			return (cities[index]) ? cities[index] : next;
		}
	}
}