package mvc.patterns
{
	import mvc.interfaces.INotification;

	public class Notification implements INotification
	{
		private var name:String;
		private var body:Object;
		private var type:String
		public function Notification(name:String,body:Object=null,type:String=null)
		{
			this.name = name;
			this.body = body;
			this.type = type;
		}
		public function getName():String{
			return name;
		}
		public function getBody():Object{
			return body;
		}
		public function getType():String{
			return type;
		}
	}
}