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
	 * RuntimeException is the superclass of those exceptions that can be thrown during
	 * the normal operation of the Plugin.IO framework.
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public class RuntimeError extends Error 
	{
		
		/**
		 * Constructs an <code>RuntimeError</code> with the specified detail message.
		 * 
		 * @param	message	The detail message pertaining to this error.
		 * @param	id	Optional error code
		 */
		public function RuntimeError( message: * = "RuntimeError", id: * = 0 )
		{
			super( message, id );
		}
		
	}

}