package  
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	public class Main extends Engine
	{	
		public function Main() 
		{
			super(600, 600, 60, false);
			FP.world = new Game;
		//	FP.console.enable();
		}

	}
	
}