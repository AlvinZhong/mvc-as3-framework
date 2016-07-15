package mvc.core
{
	import mvc.interfaces.IMediator;

	public class View
	{
		private var mediatorMap:Array;
		public function View()
		{
			mediatorMap = new Array();
		}
		public function registerMediator(mediator:IMediator):void{
			mediatorMap[mediator.getMediatorName()] = [mediator]
			mediator.onRegister();
		}
		public function retrieveMediator(mediatorName:String):IMediator{
			return mediatorMap[mediatorName];
		}
	}
}
