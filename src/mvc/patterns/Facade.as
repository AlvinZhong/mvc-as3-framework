package mvc.patterns
{
	import mvc.core.Controller;
	import mvc.core.Model;
	import mvc.core.View;
	import mvc.interfaces.ICommand;
	import mvc.interfaces.IMediator;
	import mvc.interfaces.INotification;
	import mvc.interfaces.IProxy;

	public class Facade
	{
		public function Facade()
		{
			controller = new Controller();
			view = new View();
			model = new Model();
			observer = new Observer();
		}
		protected static var instance:Facade = null;
		private var controller:Controller;
		private var observer:Observer;
		private var view:View;
		private var model:Model;
		public static function getInstance():Facade{
			if(instance==null)instance = new Facade();
			return instance;
		}
		public function sendNotification(notificationName:String,body:Object=null,type:String=null):void{
			var note:INotification = new Notification(notificationName,body,type);
			observer.notify(note);
		}
		public function registerCommand(notificationName:String,commandClassRef:*):void{
			controller.registerCommand(notificationName,commandClassRef);
			
			var command:ICommand = new commandClassRef();
			observer.registerNotifier(notificationName,command.execute)
		}
		public function registerMediator(mediator:IMediator):void{
			view.registerMediator(mediator);
			
			var maps:Array = mediator.registerNotifier();
			for each(var map:* in maps){
				observer.registerNotifier(map.msg,map.callback);
			}
		}
		public function retrieveMediator(mediatorName:String):IMediator{
			return view.retrieveMediator(mediatorName);
		}
		public function registerProxy(proxy:IProxy):void{
			model.registerProxy(proxy);
		}
		public function retrieveProxy(proxyName:String):IProxy{
			return model.retrieveProxy(proxyName);
		}
	}
}