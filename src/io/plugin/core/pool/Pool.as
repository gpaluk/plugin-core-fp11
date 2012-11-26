/**
 * Gary Paluk - http://www.plugin.io
 * Copyright (c) 2011-2012
 * 
 * Distributed under the MIT License.
 * http://opensource.org/licenses/mit-license.php
 */
package io.plugin.core.pool 
{
	import io.plugin.core.errors.IllegalArgumentError;
	import io.plugin.core.interfaces.IDisposable;
	import io.plugin.core.pool.store.IItemStore;
	import io.plugin.core.pool.store.StackStore;
	
	/**
	 * A general purpose Object Pool used for allocating objects for reuse
	 * whilst avoiding garbage collection and minimizing object creation 
	 * and destruction.
	 * 
	 * @author Gary Paluk
	 */
	public class Pool implements IDisposable
	{
		
		protected var _type: Class;
		protected var _isDisposed: Boolean;
		protected var _factory: Class;
		protected var _loadingMode: LoadingMode;
		protected var _itemStore: IItemStore;
		protected var _size: int;
		protected var _count: int;
		
		/**
		 * Constructor - creates a new instance of a Pool object.
		 * 
		 * @param	type			The class type of the pooled objects
		 * @param	factory			The factory class used to abstract the Pool data type from the Pool
		 * @param	size			The size of the object pool
		 * @param	loadingMode		The mode used to load objects in the Pool
		 * @param	accessMode		The mode used to access objects in the Pool
		 */
		public function Pool( type: Class, factory: Class, size: int, loadingMode:LoadingMode = null, accessMode:AccessMode = null ) 
		{
			_type = type;
			_size = size;
			_loadingMode = loadingMode ;
			_factory = factory;
			_itemStore = createItemStore( accessMode, size );
			
			if ( loadingMode == LoadingMode.EAGER )
			{
				preloadItems();
			}
		}
		
		/**
		 * Release an object back to the object Pool
		 * 
		 * @param	item	The item to release
		 */
		public function release( item: * ): void
		{
			// lock if threaded
			_itemStore.store( item );
		}
		
		/**
		 * Preloads items into the object Pool when loadingMode is LoadingMode.EAGER
		 */
		private final function preloadItems(): void
		{
			var i: int;
			for ( i = 0; i < _size; i++ )
			{
				var item: * = new _factory( this );
				_itemStore.store( item );
			}
			_count = _size;
		}
		
		/**
		 * Creates an item store object used to encapsulate access to the object Pool
		 * 
		 * <p>NOTE: Currently only the AccessMode.LIFO mode is implemented</p>
		 * 
		 * @param	mode		The mode used to access the objects in the object Pool
		 * @param	capacity	The maximum number of items in the object pool when the LoadingMode causes fixed length
		 * 
		 * @return The new <code>IItemStore</code> object
		 */
		private final function createItemStore( mode: AccessMode, capacity: int ): IItemStore
		{
			switch( mode )
			{
				case AccessMode.FIFO:
						throw new IllegalArgumentError( "sorry, not yet implemented. Please use AccessMode.LIFO" );
					break;
				case AccessMode.LIFO:
						return new StackStore( _factory, this, capacity );
					break;
				case AccessMode.CIRCULAR_STORE:
						throw new IllegalArgumentError( "sorry, not yet implemented. Please use AccessMode.LIFO" );
					break;
				default:
					throw new IllegalArgumentError();
			}
		}
		
		/**
		 * Returns an object from the object pool. In some circumstances, where the pool
		 * <code>LoadingMode</code> enables the pool to grow and all objects in the pool
		 * are in use, a new object is returned.
		 * 
		 * <p>If the pools <code>LoadingMode</code> causes a fixed size pool length, it
		 * is the programmers responsibilty to ensure that he/she does not exceed this
		 * pool size</p>
		 * 
		 * @return	An object from the pool
		 */
		public function acquire(): *
		{
			switch( _loadingMode )
			{
				case LoadingMode.EAGER:
						return acquireEager();
					break;
				case LoadingMode.LAZY:
						return acquireLazy();
					break;
				case LoadingMode.LAZY_EXPANDING:
						return acquireLazyExpanding();
					break;
				default:
					throw new IllegalArgumentError();
			}
		}
		
		/**
		 * Acquire an object from the object pool using the eager creation type
		 * 
		 * @return	An object from the object pool
		 */
		private final function acquireEager(): *
		{
			// lock if threaded
			return _itemStore.fetch();
		}
		
		/**
		 * Acquire an object from the object pool using the lazy creation type
		 * 
		 * @return	An object from the object pool
		 */
		private final function acquireLazy(): *
		{
			// lock if threaded
			if ( _itemStore.count > 0 )
			{
				return _itemStore.fetch();
			}
			
			_count++;
			return new _factory( this );
		}
		
		/**
		 * Acquire an object from the object pool using the aquire lazy creation type
		 * 
		 * @return	An object from the object pool
		 */
		private final function acquireLazyExpanding(): *
		{
			var shouldExpand: Boolean = false;
			if ( _count < _size )
			{
				var newCount: int = _count++;
				if ( newCount <= _size )
				{
					shouldExpand = true;
				}
				else
				{
					_count--;
				}
			}
			
			if ( shouldExpand )
			{
				return new _factory( this );
			}
			else
			{
				// lock if threading
				return _itemStore.fetch();
			}
		}
		
		/**
		 * Dispose of the <code>Pool</code> object 
		 */
		public function dispose(): void
		{
			if ( _isDisposed )
			{
				return;
			}
			
			_isDisposed = true;
			
			// lock if threaded
			while ( _itemStore.count > 0 )
			{
				try{
					var disposable:IDisposable = _itemStore.fetch() as IDisposable;
					disposable.dispose();
				}
				catch ( e:Error )
				{
					
				}
			}
			
			_loadingMode = null;
		}
		
		/**
		 * A flag indicating if the pool has been disposed. TRUE is disposed() has been called, otherwise FALSE
		 */
		public function get isDisposed():Boolean 
		{
			return _isDisposed;
		}
		
		/**
		 * The <code>LoadingMode</code> used as the strategy to load objects of this <code>Pool</code>
		 */
		public function get loadingMode():LoadingMode 
		{
			return _loadingMode;
		}
		
	}

}