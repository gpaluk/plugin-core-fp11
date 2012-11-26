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
	 * Loading mode strategy enumeration
	 * 
	 * @author Gary Paluk
	 */
	public class LoadingMode 
	{
		
		/**
		 * Causes all objects to be constructed in advance
		 */
		public static const EAGER: LoadingMode = new LoadingMode( "Eager" );
		
		/**
		 * Checks to see if there are free items in the pool, and if not, it creates a new one and is not limited
		 * by the Pools capacity
		 */
		public static const LAZY: LoadingMode = new LoadingMode( "Lazy" );
		
		/**
		 * Create a new resource as long as the pool hasn't reached its capacity
		 */
		public static const LAZY_EXPANDING: LoadingMode = new LoadingMode( "LazyExpanding" );
		
		protected var _type: String;
		
		/**
		 * Constructor - Create a new <code>LoadingMode</code> object
		 * 
		 * @param	type	The type of <code>LoadingMode</code>
		 */
		public function LoadingMode( type: String ) 
		{
			_type = type;
		}
		
		/**
		 * Returns a <code>Vector</code> or <code>LoadingMode</code> objects that are
		 * default properties of the <code>LoadingMode</code> class
		 * 
		 * @return Returns a <code>Vector</code> of <code>LoadingMode</code> objects
		 */
		public static function get toVector(): Vector.<LoadingMode>
		{
			return Vector.<LoadingMode>([
											EAGER,
											LAZY,
											LAZY_EXPANDING
										]);
		}
		
		/**
		 * Returns the <code>LoadingMode</code> type
		 */
		public function get type(): String 
		{
			return _type;
		}
	}

}