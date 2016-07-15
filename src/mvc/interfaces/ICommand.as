package mvc.interfaces
{
	public interface ICommand
	{
		function execute(note:INotification):void;
	}
}