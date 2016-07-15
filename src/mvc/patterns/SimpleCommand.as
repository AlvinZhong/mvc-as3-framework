package mvc.patterns
{
	import mvc.interfaces.ICommand;
	import mvc.interfaces.INotification;

	public class SimpleCommand implements ICommand
	{
		public function SimpleCommand()
		{
		}
		public function execute(note:INotification):void{
		}
	}
}