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
	 * Thrown to indicate that a method has been passed an illegal argument. 
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class IllegalArgumentError extends RuntimeError
	{
		
		/**
		 * Constructs an <code>IllegalArgumentError</code> with no detail message.
		 * 
		 * @param	message	The detail message pertaining to this error.
		 * @param	id	Optional error code
		 */
		public function IllegalArgumentError( message: * = "IllegalArgumentError", id: * = 0 ) 
		{
			super( message, id );
		}
		
	}
}