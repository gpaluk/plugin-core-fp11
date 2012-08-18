/**
 * Plugin.IO - http://www.plugin.io
 * Copyright (c) 2011-2012
 * 
 * Distributed under the MIT License.
 * http://opensource.org/licenses/mit-license.php
 */
package io.plugin.core.interfaces 
{
	
	/**
	 * A class that implements the <code>IEquatable</code> interface enables an
	 * equality check to see if the type and values of the class are equal.
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public interface IEquatable 
	{
		function equals( o: Object ): Boolean;
	}
	
}