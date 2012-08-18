/**
 * Gary Paluk - http://www.plugin.io
 * Copyright (c) 2011-2012
 * 
 * Distributed under the MIT License.
 * http://opensource.org/licenses/mit-license.php
 */
package io.plugin.core.interfaces 
{
	
	/**
	 * Classes implementing the <code>ICloneable</code> adhere that they create a shallow
	 * copy of instances of the class.
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public interface ICloneable 
	{
		function clone(): *;
	}
	
}