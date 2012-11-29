/**
 * Gary Paluk - http://www.plugin.io
 * Copyright (c) 2011-2012
 * 
 * Distributed under the MIT License.
 * http://opensource.org/licenses/mit-license.php
 */
package io.plugin.core.system 
{
	import io.plugin.core.errors.IllegalArgumentError;
	import io.plugin.core.interfaces.IComparable;
	import io.plugin.core.interfaces.IEquatable;
	
	/**
	 * ...
	 * @author Gary Paluk
	 */
	public class Guid implements IComparable, IEquatable 
	{
		
		protected var _guid: String;
		
		public function Guid() 
		{
			_guid = generateGuid();
		}
		
		[Inline]
		private final function generateGuid(): String
		{
			var uid:Array = new Array();
			var chars:Array = new Array( 48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70 );
			var separator:uint = 45;
			var template:Array = new Array( 8,4,4,4,12 );
			
			for ( var a:uint = 0; a < template.length; a++ ) {
				for ( var b:uint = 0; b < template[a]; b++ ) {
					uid.push( chars[ Math.floor( Math.random() * chars.length ) ] );
				} if ( a < template.length - 1 ) {
					uid.push( separator ); 
				}
			}
			
			return String.fromCharCode.apply( null, uid );
		}
		
		[Inline]
		public function compareTo( o: Object ): int
		{
			if ( !( o is Guid ) )
			{
				throw new IllegalArgumentError();
			}
			var guid: Guid = o as Guid;
			
			if ( guid.toString() < toString() )
			{
				return 1;
			}
			else if ( guid.toString() > toString() )
			{
				return -1;
			}
			else
			{
				return 0;
			}
		}
		
		[Inline]
		public function equals( o: Object ): Boolean
		{
			if ( !(o is Guid ) )
			{
				return false;
			}
			var guid:Guid = o as Guid;
			
			if ( guid.toString() == toString() )
			{
				return true;
			}
			return false;
		}
		
		[Inline]
		public function toString(): String
		{
			return _guid;
		}
		
	}

}