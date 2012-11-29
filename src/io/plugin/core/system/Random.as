/**
 * Gary Paluk - http://www.plugin.io
 * Copyright (c) 2011-2012
 * 
 * Distributed under the MIT License.
 * http://opensource.org/licenses/mit-license.php
 */
package io.plugin.core.system
{
	
	/**
	 * PLEASE NOTE: If using this class for a .NET server mirror, there are differences in
	 * the random numbers that are generated using the .NET framework and the AS3 implementation
	 * of this class, namely when using the nextNumber() method, which aught to be equivalent to
	 * the .NET nextDouble() method. This is the result of differences between the floating point
	 * calculations/accuracy/endianness etc between .NET and the AS3 runtime.
	 * 
	 * Based on the algorithm by Donald E. Knuth and presented in his book - The Art of Computer
	 * Programming: Seminumerical Algorithms
	 * 
	 * @author Gary Paluk
	 */
	import flash.utils.ByteArray;
	import io.plugin.core.interfaces.ICloneable;
	import io.plugin.core.interfaces.IEquatable;
	
	public class Random implements IEquatable, ICloneable
	{
		
		private const MSEED: int = 0x9a4ec86;
		
		private var _next: int;
		private var _nextp: int;
		private var _seed: int;
		private var _seedList: Vector.<int>;
		
		/**
		 * Creates a new pseudo random object
		 * 
		 * @param	seed	The seed value
		 */
		public function Random( seed:int )
		{
			_seed = seed;
			_seedList = new Vector.<int>( 0x38, true );
			
			var num2: int = MSEED - Math.abs( seed );
			_seedList[0x37] = num2;
			
			var num3: int = 1;
			
			for (var i: int = 1; i < 0x37; i++)
			{
				var index: int = (0x15 * i) % 0x37;
				_seedList[ index ] = num3;
				num3 = num2 - num3;
				
				if (num3 < 0)
				{
					num3 += 0x7fffffff;
				}
				num2 = _seedList[ index ];
			}
			for (var j:int = 1; j < 5; j++)
			{
				for (var k: int = 1; k < 0x38; k++)
				{
					_seedList[ k ] -= _seedList[ 1 + ((k + 30) % 0x37) ];
					if (_seedList[ k ] < 0)
					{
						_seedList[ k ] += 0x7fffffff;
					}
				}
			}
			_next = 0;
			_nextp = 0x15;
		}
		
		/**
		 * Get the current seed value
		 */
		public function get seed(): int
		{
			return _seed;
		}
		
		/**
		 * Generates a sample for a large range
		 * 
		 * @return	The new sample
		 */
		private function getSampleForLargeRange():Number
		{
			var num: int = internalSample();
			if ( (internalSample() % 2) == 0 )
			{
				num = -num;
			}
			
			var num2: Number = num;
			num2 += 2147483646;
			
			return ( num2 / 4294967293 );
		}
		
		/**
		 * Create a sample for internal use
		 * 
		 * @return	The new sample
		 */
		private function internalSample():int
		{
			var next: int = _next;
			var nextp: int = _nextp;
			
			if ( ++next >= 0x38 )
			{
				next = 1;
			}
			if ( ++nextp >= 0x38 )
			{
				nextp = 1;
			}
			
			var num: int = _seedList[ next ] - _seedList[ nextp ];
			if ( num < 0 )
			{
				num += 0x7fffffff;
			}
			
			_seedList[ next ] = num;
			_next = next;
			_nextp = nextp;
			
			return num;
		}
		
		/**
		 * Generates a random integer
		 * 
		 * @return	The random interger
		 */
		public function nextInt( ): int
		{	
			return internalSample( );
		}
		
		/**
		 * Generates a random interger with a maximum value
		 * 
		 * @param	max	The maximum clamping value
		 * 
		 * @return A random interger with a maximum value
		 */
		public function nextIntMax( max: int ): int
		{
			if ( max < 0 )
			{
				throw new ArgumentError( "max must be positive at Random::nextIntMax()" );
			}
			return int( sample() * max );
		}
		
		/**
		 * Generates a random interger within a give range
		 * 
		 * @param	min	The minimum clamping value
		 * @param	max	The maximum clamping value
		 * 
		 * @return	A random integer within a given range
		 */
		public function nextIntRange( min:int, max:int ):int
		{
			if ( min > max )
			{
				throw new ArgumentError("min must be less than or equal to max at Random::nextIntMax()");
			}
			var num:Number = max - min;
			if (num <= 0x7fffffff)
			{
				return ( ((int) (sample() * num)) + min );
			}
			return ( ((int) (Number(getSampleForLargeRange() * num))) + min );
		}
		
		/**
		 * Populates a byte array with a random set of bytes
		 * 
		 * @param	buffer	The buffer to populate
		 * @param	length	The number of random bytes to write to the buffer
		 */
		public function nextBytes( buffer: ByteArray, length: int ): void
		{
			if ( buffer == null )
			{
				throw new ArgumentError( "buffer cannot be null at Random::nextIntMax()" );
			}
			for ( var i: int = 0; i < length; i++ )
			{
				buffer.writeByte( internalSample() % 0x100 );
			}
			buffer.position = 0;
		}
		
		/**
		 * Generate the next Number
		 * 
		 * @return	The next random Number
		 */
		public function nextNumber():Number
		{
			return this.sample();
		}
		
		/**
		 * Generate the next random number within a given range
		 * 
		 * @param	min	The minimum clamping value
		 * @param	max	The maximum clamping value
		 * 
		 * @return	the next random number within a given range
		 */
		public function nextNumberRange( min: Number, max: Number ): Number
		{
			if ( min >= max )
			{
				throw new ArgumentError( "max must be higher than min Random::nextNumberRange()" );
			}
			return ( min + ( (max - min) * nextNumber() ) );
		}
		
		/**
		 * Creates a new sample
		 * 
		 * @return	The new sample
		 */
		protected function sample( ): Number
		{
			return ( internalSample() * 4.6566128752457969E-10 );
		}
		
		/**
		 * Checks this Objects against another Random Object to see if they are equal
		 * 
		 * @param	o	The Random Object to compare against
		 * @return	true if the objects equate, otherwise false
		 */
		public function equals( o: Object ): Boolean
		{
			if ( !o is Random )
			{
				return false;
			}
			
			// (probability theory is working in our favour here) ... probably ;)
			if ( sample() == Random( o ).sample() )
			{
				return true;
			}
			return false;
		}
		
		/**
		 * Create a shallow clone of the Random Object
		 * 
		 * @return	The clones Random Object
		 */
		public function clone(): *
		{
			var o: Random = new Random( _seed );
			o.set( _next, _nextp, _seed, _seedList );
			
			return o;
		}
		
		/**
		 * @internal
		 * Intenal use only
		 */
		protected function set( next: int, nextp: int, seed: int, seedList: Vector.<int> ): void
		{
			_next = next;
			_nextp = nextp;
			_seed = seed;
			
			_seedList  = new Vector.<int>();
			for each ( var entry: int in seedList )
			{
				_seedList.push( entry );
			}
		}
		
		
	}

}