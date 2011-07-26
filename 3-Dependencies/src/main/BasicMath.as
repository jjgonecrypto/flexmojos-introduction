package
{
	public class BasicMath
	{
		private var number:Number;
		
		public function BasicMath(nbr:Number)
		{
			number = nbr;
		}
		
		public function multiply(factor:Number):Number
		{
			return factor * number; 
		}
	}
}