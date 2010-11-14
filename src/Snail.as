package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	
	public class Snail extends Entity
	{  
		[Embed(source='../lib/snail.png')]
		private const SNAIL:Class;
		public var mySnail:Spritemap = new Spritemap(SNAIL, 96, 54);
		public static var snailrow:int = Math.floor(Math.random() * 4);
		public static var left:int = Math.floor(Math.random() * 2);
		public var eating:Boolean = false;
		
		public function Snail() 
		{
			setHitbox(96, 54);
			
			mySnail.add("walkleft", [0, 1], 1, true);
			mySnail.add("eatleft", [7, 8], 1, true);
			mySnail.add("dieleft", [19, 18, 17, 16, 15, 14, 13], 3, false);
			mySnail.add("walkright", [22, 21], 1, true);
			mySnail.add("eatright", [28, 29], 1, true);
			mySnail.add("dieright", [35, 36, 37, 38, 39, 40, 41], 3, false);
			graphic = mySnail;
			
			if (left) mySnail.x = 0;
			else mySnail.x = 500;
			mySnail.y = Game.ycoordmarkers[snailrow]+15;
			
		}
		override public function update():void
		{
			var plantList:Array = [];
			if (left && !eating)
			{
				mySnail.play("walkright");
				mySnail.x = mySnail.x + 1;
			}
			else
			{}
			world.getClass(Plant, plantList);
			for each (var e:Plant in plantList)
			{
				if (collide("plant", mySnail.x, mySnail.y))
				{
					mySnail.play("eatright");
				}
			}
			//}
			//else
			//{
			//	mySnail.play("walkleft");
			//	mySnail.x = mySnail.x - 1
				//v//ar plantList:Array = [];
				//world.getClass(Plant, plantList);
			//	for each (var e:Plant in plantList)
			//	{
			//		if (collide(Game.Snail, mySnail.x, mySnail.y))
			//		{
			//			mySnail.play("eatleft");
			//		}
			//	}
			//}
		}
	}
}