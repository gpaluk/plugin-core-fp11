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
	 * A class that implements the <code>IDisposable</code> interface adheres to
	 * removing all object references so that they become available for the Flash players
	 * internal garbage collector to release allocated memory back to available memory when
	 * the <code>dispose</code> method is called.
	 * 
	 * @author Gary Paluk - http://www.plugin.io
	 */
	public interface IDisposable
	{
		function dispose(): void;
		// function get isDisposed(): Boolean; // TODO consider enforcing a disposed flag
	}
	
}