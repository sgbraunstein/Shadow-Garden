package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	public class Frog extends Entity
	{  
		[Embed(source='../lib/frogquick.png')]
		private const FROG:Class;
		public var myFrog:Spritemap = new Spritemap(FROG, 102, 60);
		public static var frogrow:int = Math.floor(Math.random() * 4);
		public var eating:Boolean = false;
		
		public function Frog() 
		{
			setHitbox(96, 60);
			
			myFrog.add("walkright", [0, 1, 2, 3], 1, true);
			myFrog.add("walkleft", [4, 5, 6, 7], 1, true);

			graphic = myFrog;
			
			myFrog.x = 100;
			myFrog.y = 250;
			
			myFrog.play("walkleft", false);
			
		}
	}
}

// Useless test comment