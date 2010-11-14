package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;

	public class Score extends Entity
	{
		public var score:Text = new Text("bla", 0, 0, 320, 240);
		public var money:int = 0;
		public function Score() 
		{
			score.size = 32;
			score.x = 0;
			score.y = 0;
			super(x, y, score);
		}
		override public function update():void
		{
			score.text = "Money : " + money;
		}
		public function Grapes():void 
		{
			money++;
		}
		
	}

}