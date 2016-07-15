package mvc.core
{
	import mvc.interfaces.ICommand;
	import mvc.interfaces.INotification;

	public class Controller
	{
		protected static var instance:Controller=null;
		protected var commandMap:Array;
		public function Controller()
		{
			commandMap = new Array();
		}
		public static function getInstance():Controller{
			if(instance==null)instance = new Controller();
			return instance;
		}
		
		public function registerCommand(notificationName:String,commandClassRef:*):void{
			commandMap[notificationName] = commandClassRef;
		}
	}
}
