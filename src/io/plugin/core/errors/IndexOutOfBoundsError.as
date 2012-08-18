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
	 * Thrown to indicate that an index of some sort (such as a <code>Collection</code>) is out of range.
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class IndexOutOfBoundsError extends RuntimeError 
	{
		
		/**
		 * Constructs an <code>IndexOutOfBoundsError</code> with the specified detail message.
		 * 
		 * @param	message	The detail message pertaining to this error.
		 * @param	id	Optional error code
		 */
		public function IndexOutOfBoundsError(message: * = "IndexOutOfBoundsError", id: * = 0 ) 
		{
			super( message, id );
		}
		
	}

}