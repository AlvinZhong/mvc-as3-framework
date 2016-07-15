package mvc.patterns
{
	import mvc.interfaces.IProxy;

	public class Proxy implements IProxy
	{
		protected var proxyName:String;
		protected var data:Object;
		public static const NAME:String = "proxy";
		public function Proxy(proxyName:String)
		{
			this.proxyName = proxyName ? proxyName:NAME;
		}
		public function getProxyName():String{
			return this.proxyName;
		}
		public function setData(data:Object):void{
			this.data = data;
		}
		public function getData():Object{
			return this.data;
		}
		public function onRegister():void{
			
		}
	}
}