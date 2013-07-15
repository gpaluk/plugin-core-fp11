package io.plugin.core.pool {
	import flash.utils.Dictionary;

	/**
	 */
	public class Pool {
		//------------------------------------------------------------------------------------------
		// PRIVATE VARIABLES
		//------------------------------------------------------------------------------------------
		
		private var m_cache:Array        = new Array();
		private var m_index:Dictionary   = new Dictionary();
		private var m_construct:Function = null;
		private var m_destruct:Function  = null;
		
		private var m_size:int     = 0;
		private var m_resize:int   = 0;
		private var m_position:int = 0;
		
		//------------------------------------------------------------------------------------------
		// CONSTRUCTOR
		//------------------------------------------------------------------------------------------
		
		/**
		 */
		public function Pool( constructor:Function, destructor:Function, size:uint, resize:uint = 0 ) {
			m_construct = constructor;
			m_destruct  = destructor;
			m_resize    = resize;
			
			expand( m_size );
		}
		
		//------------------------------------------------------------------------------------------
		// PUBLIC METHODS
		//------------------------------------------------------------------------------------------
		
		/**
		 */
		public final function pop():* {
			var o:* = null;
			
			if( m_position == m_size ) {
				if( m_resize == 0 ) {
					throw new Error( "The pool is empty" );
				}
				
				expand( m_resize );
			}
			
			o = m_cache[ m_position++ ];
			m_index[ o ] = null;
			
			return o;
		}
		
		/**
		 */
		public final function push( o:* ):void {
			if( m_index[ o ] === undefined ) {
				throw new Error( "The specified object does not belong to the pool" );
			}
			
			if( m_index[ o ] === o ) {
				return;
			}
			
			m_index[ o ] = o;
			m_cache[ --m_position ] = o;
			m_destruct( o );
		}
		
		/**
		 */
		public final function dispose():void {
			var o:* = null;
			
			for each( o in m_cache ) {
				m_destruct( o );
			}
			
			m_cache     = null;
			m_index     = null;
			m_construct = null;
			m_destruct  = null;
			m_size      = 0;
			m_resize    = 0;
			m_position  = 0;
		}
		
		//------------------------------------------------------------------------------------------
		// PRIVATE METHODS
		//------------------------------------------------------------------------------------------
		
		/**
		 */
		private final function expand( count:int ):void {
			var o:*   = null;
			var i:int = m_size;
			var n:int = m_size + count;
			
			while( i < n ) {
				o = m_construct();
				
				m_cache[ i ] = o;
				m_index[ o ] = o;
				
				i++;
			}
			
			m_size = n;
		}

	}// EOC
}