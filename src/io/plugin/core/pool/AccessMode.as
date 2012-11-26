/**
 * Gary Paluk - http://www.plugin.io
 * Copyright (c) 2011-2012
 * 
 * Distributed under the MIT License.
 * http://opensource.org/licenses/mit-license.php
 */
package io.plugin.core.pool 
{
	/**
	 * Access mode strategy enumeration
	 * 
	 * @author Gary Paluk
	 */
	public class AccessMode 
	{
		
		/**
		 * First in first out file mode
		 */
		public static const FIFO: AccessMode = new AccessMode( "FIFO" );
		
		/**
		 * Last in first out file mode
		 */
		public static const LIFO: AccessMode = new AccessMode( "LIFO" );
		
		/**
		 * Circular store file mode
		 */
		public static const CIRCULAR_STORE: AccessMode = new AccessMode( "CircularStore" );
		
		protected var _type: String;
		
		/**
		 * Constructor - Create a new <code>AccessMode</code> object
		 * 
		 * @param	type	The type of <code>AccessMode</code>
		 */
		public function AccessMode( type: String ) 
		{
			_type = type;
		}
		
		/**
		 * Returns a <code>Vector</code> or <code>AccessMode</code> objects that are
		 * default properties of the <code>AccessMode</code> class
		 * 
		 * @return Returns a <code>Vector</code> of <code>AccessMode</code> objects
		 */
		public static function toVector(): Vector.<AccessMode>
		{
			return Vector.<AccessMode> ([
											FIFO,
											LIFO,
											CIRCULAR_STORE
										]);
		}
		
		/**
		 * Returns the <code>AccessMode</code> type
		 */
		public function get type():String 
		{
			return _type;
		}
		
	}

}