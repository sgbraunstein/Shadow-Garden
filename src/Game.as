package  
{
	//required files
	import Math
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.masks.Grid;
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;

	//this object creates a place in the cold, calculating heart of the computer for a beautiful game of tetris.
	public class Game extends World
	{	
		public static var p1:Plant = new Plant;
		public static var p2:Plant = new Plant;
		public static var p3:Plant = new Plant;
		public static var p4:Plant = new Plant;
		public static var p5:Plant = new Plant;
		public static var p6:Plant = new Plant;
		public static var p7:Plant = new Plant;
		public static var p8:Plant = new Plant;
		public static var p9:Plant = new Plant;
		public static var p10:Plant = new Plant;
		public static var p11:Plant = new Plant;
		public static var p12:Plant = new Plant;
		public static var p13:Plant = new Plant;
		public static var p14:Plant = new Plant;
		public static var p15:Plant = new Plant;
		public static var p16:Plant = new Plant;
		public static var p17:Plant = new Plant;
		public static var p18:Plant = new Plant;
		public static var p19:Plant = new Plant;
		public static var p20:Plant = new Plant;
		public static var p21:Plant = new Plant;
		public static var p22:Plant = new Plant;
		public static var p23:Plant = new Plant;
		public static var p24:Plant = new Plant;
		
		public var plantrow1:Array = [p1, p2, p3, p4, p5, p6];
		public var plantrow2:Array = [p7, p8, p9, p10, p11, p12];
		public var plantrow3:Array = [p13, p14, p15, p16, p17, p18];
		public var plantrow4:Array = [p19, p20, p21, p22, p23, p24];
		
		public var plantgrid:Array = [plantrow1, plantrow2, plantrow3, plantrow4];
		
		public static var ycoordmarkers:Array = [275, 353, 434, 520];
		public static var xcoordmarkers:Array = [20, 120, 220, 320, 420, 520];
		
		public var rowID:int;
		public var columnID:int;
		
		public static var myScore:Score = new Score;
		
		public function Game() 
		{
			add(new Shadowgarden);
			add(new Snail);
			add(myScore);
		}
		override public function update():void 
		{
			super.update();
			if (Input.mousePressed)
			{
				if (Input.mouseY - 70 >= 218)
				{
					rowID = -1;
					columnID = -1;
					if (Input.mouseY > 513) rowID++; 
					if (Input.mouseY > 430) rowID++;
					if (Input.mouseY > 353) rowID++;
					if (Input.mouseY > 288) rowID++;
					if (Input.mouseX > 500) columnID++;
					if (Input.mouseX > 400) columnID++;
					if (Input.mouseX > 300) columnID++;
					if (Input.mouseX > 200) columnID++;
					if (Input.mouseX > 100) columnID++;
					if (Input.mouseX > 0) columnID++;
					add(plantgrid[rowID][columnID]);
					plantgrid[rowID][columnID].x = xcoordmarkers[columnID];
					plantgrid[rowID][columnID].y = ycoordmarkers[rowID];
					plantgrid[rowID][columnID].getsborn();
					myScore.Grapes();
					trace(rowID);
					trace(columnID);
					trace(Input.mouseY);
					trace(Input.mouseX);
				}
			}
		}
	}
}
