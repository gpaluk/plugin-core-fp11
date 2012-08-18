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
	 * Thrown when an application attempts to use null in a case where an object is required.
	 * Applications should throw instances of this class to indicate other illegal uses of the <code>null</code> object. 
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class NullPointerError extends RuntimeError 
	{
		
		/**
		 * Constructs an <code>NullPointerError</code> with the specified detail message.
		 * 
		 * @param	message	The detail message pertaining to this error.
		 * @param	id	Optional error code
		 */
		public function NullPointerError( message: * = "NullPointerError", id: * = 0 ) 
		{
			super( message, id );
		}
		
	}

}