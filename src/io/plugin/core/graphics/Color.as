package io.plugin.core.graphics 
{
	import io.plugin.core.interfaces.ICloneable;
	import io.plugin.core.interfaces.IDisposable;
	import io.plugin.core.interfaces.IEquatable;
	
	/**
	 * ...
	 * @author Gary Paluk
	 */
	public class Color implements ICloneable, IDisposable, IEquatable 
	{
		
		private var _r: Number;
		private var _g: Number;
		private var _b: Number;
		private var _a: Number;
		
		private var _rUint: uint;
		private var _gUint: uint;
		private var _bUint: uint;
		private var _aUint: uint;
		
		private var _needsUpdate: Boolean;
		
		public static function fromHexRGB( hexValue:uint ):Color
		{
			var r:int = (hexValue >> 16) & 0xff;
			var g:int = (hexValue >> 8) & 0xff;
			var b:int = hexValue & 0xff;
			var invHex:Number = 1 / 0xff;
			return new Color( r * invHex, g * invHex, b * invHex, 1 );
		}
		
		public static function fromHexRGBA( hexValue:uint ):Color
		{
			var r:int = (hexValue >> 24) & 0xff;
			var g:int = (hexValue >> 16) & 0xff;
			var b:int = (hexValue >> 8) & 0xff;
			var a:int = hexValue & 0xff;
			var invHex:Number = 1 / 0xff;
			return new Color( r * invHex, g * invHex, b * invHex, a * invHex );
		}
		
		public function Color( r: Number = 0, g: Number = 0, b: Number = 0, a: Number = 1 ) 
		{
			_r = r;
			_g = g;
			_b = b;
			_a = a;
			
			update();
		}
		
		public function clone(): *
		{
			return new Color( _r, _g, _b, _a );
		}
		
		public function dispose(): void
		{
			
		}
		
		public function equals( o: Object ): Boolean
		{
			if ( !(o is Color) )
			{
				return false;
			}
			var c: Color = o as Color;
			if ( c.r == _r && c.g == _g && c.b == _b && c.a == _a )
			{
				return true;
			}
			return false;
		}
		
		[Inline]
		public final function get r(): Number
		{
			return _r;
		}
		
		[Inline]
		public final function set r( value: Number ): void
		{
			if ( value < 0 )
			{
				value = 0;
			} else if ( value > 1 )
			{
				value = 1;
			}
			_r = value;
			_needsUpdate = true;
		}
		
		[Inline]
		public final function get g(): Number
		{
			return _g;
		}
		
		[Inline]
		public final function set g( value: Number ): void
		{
			if ( value < 0 )
			{
				value = 0;
			} else if ( value > 1 )
			{
				value = 1;
			}
			_g = value;
			_needsUpdate = true;
		}
		
		[Inline]
		public final function get b(): Number
		{
			return _b;
		}
		
		[Inline]
		public final function set b( value: Number ): void
		{
			if ( value < 0 )
			{
				value = 0;
			} else if ( value > 1 )
			{
				value = 1;
			}
			_b = value;
			_needsUpdate = true;
		}
		
		[Inline]
		public final function get a(): Number
		{
			return _a;
		}
		
		[Inline]
		public final function set a( value: Number ): void
		{
			if ( value < 0 )
			{
				value = 0;
			} else if ( value > 1 )
			{
				value = 1;
			}
			_a = value;
			_needsUpdate = true;
		}
		
		public function set( r: Number, g: Number, b: Number, a: Number ): void
		{
			this.r = r;
			this.g = g;
			this.b = b;
			this.a = a;
		}
		
		public function get rgb(): uint
		{
			if ( _needsUpdate )
			{
				update();
			}
			
			return _rUint << 16 | _gUint << 8 | _bUint;
		}
		
		public function get rgba(): uint
		{
			if ( _needsUpdate )
			{
				update();
			}
			
			return _rUint << 24 | _gUint << 16 | _bUint << 8 | _aUint;
		}
		
		private function update(): void
		{
			_rUint = uint( Math.floor( _r * 255 ) );
			_gUint = uint( Math.floor( _g * 255 ) );
			_bUint = uint( Math.floor( _b * 255 ) );
			_aUint = uint( Math.floor( _a * 255 ) );
			
			_needsUpdate = false;
		}
		
		public function toArray(): Array
		{
			return [ _r, _g, _b, _a ];
		}
		
	}

}