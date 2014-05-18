package plugin.utils 
{
	/**
	 * ...
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class StringUtils 
	{
		
		public static function trim( str:String ):String
		{
			return str.replace(/^\s+|\s+$/g, '');
		}
		
	}

}