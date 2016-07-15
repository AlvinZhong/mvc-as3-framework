package mvc.patterns
{
	import mvc.interfaces.INotification;

	public class Observer
	{
		public var notificationMap:Array;
		public function Observer()
		{
			notificationMap = new Array();
		}
		public function registerNotifier(notificationName:String,callback:Function=null):void{
			if(notificationMap[notificationName]==null){
				notificationMap[notificationName] = [callback];
			}else{
				notificationMap[notificationName].push(callback);
			}
		}
		public function notify(notification:INotification):void{
			var callbacks:Array = notificationMap[notification.getName()];
			if(callbacks && callbacks.length > 0){
				for each(var callback:Function in callbacks){
					if(callback)callback(notification);
				}
			}
		}
	}
}