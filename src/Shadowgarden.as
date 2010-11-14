package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	public class Shadowgarden extends Entity
	{  
		[Embed(source='../lib/shadowgarden.png')]
		private const SHADOWGARDEN:Class;
		
		public function Shadowgarden() 
		{
			graphic = new Image(SHADOWGARDEN);
		}
	}
}