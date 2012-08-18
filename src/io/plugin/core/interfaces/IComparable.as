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
	 * The interface imposes a total ordering on the objects of each class that implements it.
	 * The ordering is referred to as the class's natural ordering, and the class's <code>compareTo</code> 
	 * method is referred to as its natural comparison method.
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public interface IComparable 
	{
		function compareTo( o: Object ): int;
	}
	
}