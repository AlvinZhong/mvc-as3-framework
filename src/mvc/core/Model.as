package mvc.core
{
	import mvc.interfaces.IProxy;
	
	public class Model
	{
		private var modelMap:Array;
		public function Model()
		{
			modelMap = new Array();
		}
		public function registerProxy(proxy:IProxy):void{
			modelMap[proxy.getProxyName()] = proxy;
			proxy.onRegister();
		}
		public function retrieveProxy(proxyName:String):IProxy{
			return modelMap[proxyName];
		}
	}
}