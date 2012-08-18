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
	 * Thrown by methods that have detected concurrent modification of an object when such modification is not permissible. 
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class ConcurrentModificationError extends RuntimeError 
	{
		
		/**
		 * Constructs a <code>ConcurrentModificationException</code> with the specified detail message.
		 * 
		 * @param	message	The detail message pertaining to this error.
		 * @param	id	Optional error code
		 */
		public function ConcurrentModificationError(message: * = "ConcurrentModificationError", id: * = 0 ) 
		{
			super( message, id );
		}
		
	}

}