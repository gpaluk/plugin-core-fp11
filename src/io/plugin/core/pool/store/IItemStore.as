/**
 * Gary Paluk - http://www.plugin.io
 * Copyright (c) 2011-2012
 * 
 * Distributed under the MIT License.
 * http://opensource.org/licenses/mit-license.php
 */
package io.plugin.core.pool.store 
{
	
	/**
	 * ...
	 * @author Gary Paluk
	 */
	public interface IItemStore 
	{
		function fetch(): * ;
		function store( item: * ): void;
		function get count(): int;
	}
	
}