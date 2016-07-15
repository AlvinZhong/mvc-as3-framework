package mvc.patterns
{
	import mvc.interfaces.IMediator;

	public class Mediator implements IMediator
	{
		protected var name:String;
		protected var viewComponent:Object;
		public static const NAME:String = "mediator";
		public function Mediator(mediatorName:String=null,viewComponent:Object=null)
		{
			this.name = mediatorName ?　mediatorName:NAME;
			this.viewComponent = viewComponent;
		}
		public function onRegister():void{
			
		}
		public function registerNotifier():Array{
			return [];
		}
		public function getViewComponent():Object{
			return this.viewComponent;
		}
		public function setViewComponent(viewComponent:Object):void{
			this.viewComponent = viewComponent;
		}
		public function getMediatorName():String{
			return this.name;
		}
	}
}