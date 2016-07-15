package mvc.interfaces
{
	public interface IProxy
	{
		function getProxyName():String;
		function getData():Object;
		function setData(data:Object):void;
		function onRegister():void;
	}
}