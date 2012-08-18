/**
 * Gary Paluk - http://www.plugin.io
 * Copyright (c) 2011-2012
 * 
 * Distributed under the MIT License.
 * http://opensource.org/licenses/mit-license.php
 */
package io.plugin.core.errors 
{
	
	/**
	 * 	Thrown when a acting on an object that has already been disposed.
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class ObjectDisposedError extends RuntimeError 
	{
		
		/**
		 * Constructs an <code>ObjectDisposedError</code> with the specified detail message.
		 * 
		 * @param	message	The detail message pertaining to this error.
		 * @param	id	Optional error code
		 */
		public function ObjectDisposedError( message: * = "ObjectDisposedError", id: * = 0 ) 
		{
			super( message, id );
		}
		
	}

}