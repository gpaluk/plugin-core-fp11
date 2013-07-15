/**
 * Gary Paluk - http://www.plugin.io
 * Copyright (c) 2011-2012
 * 
 * Distributed under the MIT License.
 * http://opensource.org/licenses/mit-license.php
 */
package io.plugin.core.system 
{
	import io.plugin.core.errors.IllegalArgumentError;
	
	/**
	 * ...
	 * @author Gary Paluk
	 */
	public class Assert 
	{
		
		/**
		 * Evaluates an expression and throws an error if the expression is false.
		 * 
		 * @param	expression	The expression to evaluate.
		 * @param	message		The error message to display.
		 */
		public static function isTrue( expression: Boolean, message: String = null ): void
		{
			if ( !expression )
			{
				if ( message == null )
				{
					message = "WARNING: Assert failed. The expression must be TRUE.";
				}
				throw new IllegalArgumentError( message );
			}
		}
		
		/**
		 * Evaluates an expression and throws an error if the expression is true.
		 * 
		 * @param	expression	The expression to evaluate.
		 * @param	message		The error message to display.
		 */
		public static function isFalse( expression: Boolean, message: String = null ): void
		{
			
		}
	}

}