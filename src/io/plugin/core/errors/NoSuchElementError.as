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
	 * Thrown to indicate that there are no more elements in an enumeration.
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class NoSuchElementError extends RuntimeError 
	{
		
		/**
		 * Constructs an <code>NoSuchElementError</code> with the specified detail message.
		 * 
		 * @param	message	The detail message pertaining to this error.
		 * @param	id	Optional error code
		 */
		public function NoSuchElementError( message: * = "NoSuchElementError", id: * = 0 ) 
		{
			super( message, id );
		}
		
	}

}