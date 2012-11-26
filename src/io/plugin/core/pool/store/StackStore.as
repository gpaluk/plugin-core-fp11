/**
 * Gary Paluk - http://www.plugin.io
 * Copyright (c) 2011-2012
 * 
 * Distributed under the MIT License.
 * http://opensource.org/licenses/mit-license.php
 */
package io.plugin.core.pool.store 
{
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import io.plugin.core.pool.Pool;
	
	/**
	 * The <code>StackStore</code> is an encapsulation of the storage area for object Pool that
	 * use the AccessMode.LIFO access strategy.
	 * 
	 * @author Gary Paluk
	 */
	public class StackStore implements IItemStore
	{
		protected var _stack:Vector.<*>;
		protected var _vectorClass: Class;
		
		protected var _capacity: int;
		protected var _count: int;
		
		/**
		 * Constructor - create a new <code>StackStore</code> object
		 * 
		 * @param	factory			The Pool factory
		 * @param	pool			The Pool
		 * @param	capacity		The capacity of this <code>IItemStore</code>
		 */
		public function StackStore( factory: Class, pool: Pool, capacity: int ) 
		{
			_capacity = capacity;
			
			var className: String = getQualifiedClassName( factory );
			_vectorClass = getDefinitionByName("Vector.<" + className + ">") as Class;
			
			_stack = new _vectorClass( );
		}
		
		/**
		 * Fetches an object from the object Pool
		 * 
		 * @return	The pooled object
		 */
		public function fetch(): *
		{
			return _stack.pop();
		}
		
		/**
		 * Adds a new item back to the object pool
		 * 
		 * @param	item	The item to add to the Pool
		 */
		public function store( item: * ): void
		{
			_stack.push( item );
		}
		
		/**
		 * The number of objects in the Pool
		 */
		public function get count():int 
		{
			return _stack.length;
		}
	}

}