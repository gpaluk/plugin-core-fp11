package io.plugin.core.graphics 
{
	import flash.utils.ByteArray;
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
			return ( c.r == _r && c.g == _g && c.b == _b && c.a == _a );
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
			}
			else if ( value > 1 )
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
			}
			else if ( value > 1 )
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
		
		
		
		// TODO all conversion functions are currently untested
		public static function ConvertFromR5G6B5( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				a[ 2 ] = (inTexels.readUnsignedShort() & 0x001F);
				a[ 1 ] = (inTexels.readUnsignedShort() & 0x07E0) >> 5;
				a[ 0 ] = (inTexels.readUnsignedShort() & 0xF800) >> 11;
				a[ 3 ] = 0;
				outTexels.push( a );
			}
		}
		
		public static function ConvertFromA1R5G5B5( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				a[ 2 ] = (inTexels.readUnsignedShort() & 0x001F);
				a[ 1 ] = (inTexels.readUnsignedShort() & 0x03E0) >> 5;
				a[ 0 ] = (inTexels.readUnsignedShort() & 0x7C00) >> 10;
				a[ 3 ] = (inTexels.readUnsignedShort() & 0x8000) >> 15;
				outTexels.push( a );
			}
		}
		
		public static function ConvertFromA4R4G4B4 ( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				a[ 2 ] = (inTexels.readUnsignedShort() & 0x000F);
				a[ 1 ] = (inTexels.readUnsignedShort() & 0x00F0) >> 4;
				a[ 0 ] = (inTexels.readUnsignedShort() & 0x0F00) >> 8;
				a[ 3 ] = (inTexels.readUnsignedShort() & 0xF000) >> 12;
				outTexels.push( a );
			}
		}
		
		public static function ConvertFromA8( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				a[ 0 ] = 0;
				a[ 1 ] = 0;
				a[ 2 ] = 0;
				a[ 3 ] = inTexels.readUnsignedByte();
				outTexels.push( a );
			}
		}
		
		public static function ConvertFromL8( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				var luminance: uint = inTexels.readUnsignedByte();
				a[ 0 ] = luminance;
				a[ 1 ] = luminance;
				a[ 2 ] = luminance;
				a[ 3 ] = 255;
				outTexels.push( a );
			}
		}
		
		public static function ConvertFromA8L8( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				var luminance: uint = inTexels.readUnsignedByte();
				var alpha: uint = inTexels.readUnsignedByte();
				a[ 0 ] = luminance;
				a[ 1 ] = luminance;
				a[ 2 ] = luminance;
				a[ 3 ] = alpha;
				outTexels.push( a );
			}
		}
		
		public static function ConvertFromR8G8B8( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				a[ 2 ] = inTexels.readUnsignedByte();
				a[ 1 ] = inTexels.readUnsignedByte();
				a[ 0 ] = inTexels.readUnsignedByte();
				a[ 3 ] = 0;
				outTexels.push( a );
			}
		}
		
		public static function ConvertFromA8R8G8B8( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				a[ 2 ] = inTexels.readUnsignedByte();
				a[ 1 ] = inTexels.readUnsignedByte();
				a[ 0 ] = inTexels.readUnsignedByte();
				a[ 3 ] = inTexels.readUnsignedByte();
				outTexels.push( a );
			}
		}
		
		public static function ConvertFromA8B8G8R8( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				a[ 0 ] = inTexels.readUnsignedByte();
				a[ 1 ] = inTexels.readUnsignedByte();
				a[ 2 ] = inTexels.readUnsignedByte();
				a[ 3 ] = inTexels.readUnsignedByte();
				outTexels.push( a );
			}
		}
		
		public static function ConvertFromL16( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				var luminance: uint = inTexels.readUnsignedShort();
				a[ 0 ] = luminance;
				a[ 1 ] = luminance;
				a[ 2 ] = luminance;
				a[ 3 ] = 65535;
				outTexels.push( a );
			}
		}
		
		public static function ConvertFromG16R16( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				a[ 0 ] = inTexels.readUnsignedShort();
				a[ 1 ] = inTexels.readUnsignedShort();
				a[ 2 ] = 0;
				a[ 3 ] = 0;
				outTexels.push( a );
			}
		}
		
		public static function ConvertFromA16B16G16R16( numTexels: int, inTexels: ByteArray, outTexels: Vector.<Array> ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var a: Array = [];
				a[ 0 ] = inTexels.readUnsignedShort();
				a[ 1 ] = inTexels.readUnsignedShort();
				a[ 2 ] = inTexels.readUnsignedShort();
				a[ 3 ] = inTexels.readUnsignedShort();
				outTexels.push( a );
			}
		}
		
		
		
		
		
		
		
		
		
		
		public static function ConvertToR5G6B5( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var r: uint = inTexels[ i ][ 0 ];
				var g: uint = inTexels[ i ][ 1 ];
				var b: uint = inTexels[ i ][ 2 ];
				
				outTexels.writeShort( b );
				outTexels.writeShort( g << 5 );
				outTexels.writeShort( r << 11 );
			}
		}
		
		public static function ConvertToA1R5G5B5( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var r: uint = inTexels[ i ][ 0 ];
				var g: uint = inTexels[ i ][ 1 ];
				var b: uint = inTexels[ i ][ 2 ];
				var a: uint = inTexels[ i ][ 3 ];
				
				outTexels.writeShort( b );
				outTexels.writeShort( g << 5 );
				outTexels.writeShort( r << 10 );
				outTexels.writeShort( a << 15 );
			}
		}
		
		public static function ConvertToA4R4G4B4( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				var r: uint = inTexels[ i ][ 0 ];
				var g: uint = inTexels[ i ][ 1 ];
				var b: uint = inTexels[ i ][ 2 ];
				var a: uint = inTexels[ i ][ 3 ];
				
				outTexels.writeShort( b );
				outTexels.writeShort( g << 4 );
				outTexels.writeShort( r << 8 );
				outTexels.writeShort( a << 12 );
			}
		}
		
		public static function ConvertToA8( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				outTexels.writeByte( inTexels[ i ][ 3 ] );
			}
		}
		
		public static function ConvertToL8( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				outTexels.writeByte( inTexels[ i ][ 0 ] );
			}
		}
		
		public static function ConvertToA8L8( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				outTexels.writeByte( inTexels[ i ][ 0 ] );
				outTexels.writeByte( inTexels[ i ][ 3 ] );
			}
		}
		
		public static function ConvertToR8G8B8( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				outTexels.writeByte( inTexels[ i ][ 2 ] );
				outTexels.writeByte( inTexels[ i ][ 1 ] );
				outTexels.writeByte( inTexels[ i ][ 0 ] );
			}
		}
		
		public static function ConvertToA8R8G8B8( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				outTexels.writeByte( inTexels[ i ][ 2 ] );
				outTexels.writeByte( inTexels[ i ][ 1 ] );
				outTexels.writeByte( inTexels[ i ][ 0 ] );
				outTexels.writeByte( inTexels[ i ][ 3 ] );
			}
		}
		
		public static function ConvertToA8B8G8R8( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				outTexels.writeByte( inTexels[ i ][ 0 ] );
				outTexels.writeByte( inTexels[ i ][ 1 ] );
				outTexels.writeByte( inTexels[ i ][ 2 ] );
				outTexels.writeByte( inTexels[ i ][ 3 ] );
			}
		}
		
		public static function ConvertToL16( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				outTexels.writeShort( inTexels[ i ][ 0 ] );
			}
		}
		
		public static function ConvertToG16R16( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				outTexels.writeShort( inTexels[ i ][ 0 ] );
				outTexels.writeShort( inTexels[ i ][ 1 ] );
			}
		}
		
		public static function ConvertToA16B16G16R16( numTexels: int, inTexels: Vector.<Array>, outTexels: ByteArray ): void
		{
			for ( var i: int = 0; i < numTexels; ++i )
			{
				outTexels.writeShort( inTexels[ i ][ 0 ] );
				outTexels.writeShort( inTexels[ i ][ 1 ] );
				outTexels.writeShort( inTexels[ i ][ 2 ] );
				outTexels.writeShort( inTexels[ i ][ 3 ] );
			}
		}
		
		
		
		
		
		
		
		
		
		public static const ConvertFromFunction: Array =
		[
			null,										// NONE
			Color.ConvertFromR5G6B5,					// R5G6B5
			Color.ConvertFromA1R5G5B5,					// A1R5G5B5
			Color.ConvertFromA4R4G4B4,					// A4R4G4B4
			Color.ConvertFromA8,						// A8
			Color.ConvertFromL8,						// L8
			Color.ConvertFromA8L8,						// A8L8
			Color.ConvertFromR8G8B8,					// R8G8B8
			Color.ConvertFromA8R8G8B8,					// A8R8G8B8 (flash bitmapdata format)
			Color.ConvertFromA8B8G8R8,					// A8B8G8R8
			Color.ConvertFromL16,						// L16
			Color.ConvertFromG16R16,					// G16R16
			Color.ConvertFromA16B16G16R16,				// A16B16G16R16
			null,/*Color.ConvertFromR16F*/				// R16F
			null,/*Color.ConvertFromG16R16F*/			// G16R16F
			null,/*Color.ConvertFromA16B16G16R16F*/		// A16B16G16R16F
			null,/*Color.ConvertFromR32F*/				// R32F
			null,/*Color.ConvertFromG32R32F*/			// G32R32F
			null,/*Color.ConvertFromA32B32G32R32F*/		// A32B32G32R32F
			null,										// DXT1
			null,										// DXT3
			null,										// DXT5
			null,										// D24S8
			null,										// BGRA
			null,										// PVRTC
			null,										// ETC1
		];
		
		public static const ConvertToFunction: Array =
		[
			null,										// NONE
			Color.ConvertToR5G6B5,						// R5G6B5
			Color.ConvertToA1R5G5B5,					// A1R5G5B5
			Color.ConvertToA4R4G4B4,					// A4R4G4B4
			Color.ConvertToA8,							// A8
			Color.ConvertToL8,							// L8
			Color.ConvertToA8L8,						// A8L8
			Color.ConvertToR8G8B8,						// R8G8B8
			Color.ConvertToA8R8G8B8,					// A8R8G8B8 (flash bitmapdata format)
			Color.ConvertToA8B8G8R8,					// A8B8G8R8
			Color.ConvertToL16,							// L16
			Color.ConvertToG16R16,						// G16R16
			Color.ConvertToA16B16G16R16,				// A16B16G16R16
			null,/*Color.ConvertToR16F*/				// R16F
			null,/*Color.ConvertToG16R16F*/				// G16R16F
			null,/*Color.ConvertToA16B16G16R16F*/		// A16B16G16R16F
			null,/*Color.ConvertToR32F*/				// R32F
			null,/*Color.ConvertToG32R32F*/				// G32R32F
			null,/*Color.ConvertToA32B32G32R32F*/		// A32B32G32R32F
			null,										// DXT1
			null,										// DXT3
			null,										// DXT5
			null,										// D24S8
			null,										// BGRA
			null,										// PVRTC
			null,										// ETC1
		];
		
	}

}