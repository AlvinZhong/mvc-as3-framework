package mvc.interfaces
{
	public interface IMediator
	{
		function onRegister():void;
		function getMediatorName():String;
		function getViewComponent():Object;
		function setViewComponent(viewComponent:Object):void;
		function registerNotifier():Array;
	}
}