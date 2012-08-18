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
	 * Thrown when a method has been invoked at an illegal or inappropriate time.
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class IllegalStateError extends RuntimeError 
	{
		
		/**
		 * Constructs an <code>IllegalStateError</code> with the specified detail message.
		 * 
		 * @param	message	The detail message pertaining to this error.
		 * @param	id	Optional error code
		 */
		public function IllegalStateError( message: * = "IllegalStateError", id: * = 0 ) 
		{
			super( message, id );
		}
		
	}

}