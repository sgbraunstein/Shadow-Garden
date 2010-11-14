package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	
	public class Plant extends Entity
	{  
		[Embed(source='../lib/plant.png')]
		private const PLANT:Class;
		public var myPlant:Spritemap = new Spritemap(PLANT, 60, 75);
		public var locationset:Boolean;
		public function Plant() 
		{
			setHitbox(60, 75);
			myPlant.add("grow", [0, 1, 2, 3, 4, 5, 6, 7], 2, false);
			graphic = myPlant;
		
		}
		public function getsborn():void
		{
			locationset = true;
		}
		override public function update():void
		{	
			if (locationset)
			{	
				myPlant.play("grow");
			}
			
		}	
	}
}