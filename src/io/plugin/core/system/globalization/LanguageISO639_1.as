/**
 * Gary Paluk - http://www.plugin.io
 * Copyright (c) 2011-2012
 * 
 * Distributed under the MIT License.
 * http://opensource.org/licenses/mit-license.php
 */
package io.plugin.core.system.globalization 
{
	import io.plugin.core.interfaces.IEquatable;
	
	/**
	 * ISO639/1 defined languages together with their ICANN defined country codes.
	 * 
	 * @author Gary Paluk
	 * 
	 * @example
	 * <code>
	 * var language: LanguageISO639_1 = LanguageISO639_1.ENGLISH;
	 * trace( language.code );
	 * // returns "en"
	 * </code>
	 * 
	 * @see http://en.wikipedia.org/wiki/ISO_639-1
	 */
	public class LanguageISO639_1 implements IEquatable
	{
		
		//use namespace plugin_core; 
		
		public static const AFAR: LanguageISO639_1 					= new LanguageISO639_1( "aa" );
		public static const ABKHAZIAN: LanguageISO639_1 			= new LanguageISO639_1( "ab" );
		public static const AFRIKAANS: LanguageISO639_1 			= new LanguageISO639_1( "af" );
		public static const AKAN: LanguageISO639_1 					= new LanguageISO639_1( "ak" );
		public static const AMHARIC: LanguageISO639_1	 			= new LanguageISO639_1( "am" );
		public static const ARABIC: LanguageISO639_1 				= new LanguageISO639_1( "ar" );
		public static const ARMENIAN: LanguageISO639_1 				= new LanguageISO639_1( "hy" );
		public static const ASSAMESE: LanguageISO639_1 				= new LanguageISO639_1( "as" );
		public static const AVERIC: LanguageISO639_1 				= new LanguageISO639_1( "av" );
		public static const AVESTAN: LanguageISO639_1 				= new LanguageISO639_1( "ae" );
		public static const AYMARA: LanguageISO639_1 				= new LanguageISO639_1( "ay" );
		public static const AZERBAIJANI: LanguageISO639_1 			= new LanguageISO639_1( "az" );
		public static const BASHKIR: LanguageISO639_1 				= new LanguageISO639_1( "ba" );
		public static const BAMBARA: LanguageISO639_1 				= new LanguageISO639_1( "bm" );
		public static const BASQUE: LanguageISO639_1 				= new LanguageISO639_1( "eu" );
		public static const BELARUSIAN: LanguageISO639_1 			= new LanguageISO639_1( "be" );
		public static const BENGALI: LanguageISO639_1 				= new LanguageISO639_1( "bn" );
		public static const BIHARI_LANGUAGES: LanguageISO639_1 		= new LanguageISO639_1( "bh" );
		public static const BISLAMA: LanguageISO639_1 				= new LanguageISO639_1( "bi" );
		public static const TIBETAN: LanguageISO639_1 				= new LanguageISO639_1( "bo" );
		public static const BOSNIAN: LanguageISO639_1 				= new LanguageISO639_1( "bs" );
		public static const BRETON: LanguageISO639_1 				= new LanguageISO639_1( "br" );
		public static const BULGARIAN: LanguageISO639_1 			= new LanguageISO639_1( "bg" );
		public static const BURMESE: LanguageISO639_1 				= new LanguageISO639_1( "my" );
		public static const CATALAN: LanguageISO639_1 				= new LanguageISO639_1( "ca" );
		public static const VALENCIAN: LanguageISO639_1 			= new LanguageISO639_1( "ca" );
		public static const CZECH: LanguageISO639_1 				= new LanguageISO639_1( "cs" );
		public static const CHAMORRO: LanguageISO639_1 				= new LanguageISO639_1( "ch" );
		public static const CHECHEN: LanguageISO639_1 				= new LanguageISO639_1( "ce" );
		public static const CHURCH_SLAVIC: LanguageISO639_1 		= new LanguageISO639_1( "cu" );
		public static const OLD_SLAVONIC: LanguageISO639_1 			= new LanguageISO639_1( "cu" );
		public static const CHURCH_SLAVONIC: LanguageISO639_1 		= new LanguageISO639_1( "cu" );
		public static const OLD_BULGARIAN: LanguageISO639_1 		= new LanguageISO639_1( "cu" );
		public static const OLD_CHURCH_SLAVONIC: LanguageISO639_1 	= new LanguageISO639_1( "cu" );
		public static const CHUVASH: LanguageISO639_1 				= new LanguageISO639_1( "cv" );
		public static const CORNISH: LanguageISO639_1 				= new LanguageISO639_1( "kw" );
		public static const CORSICAN: LanguageISO639_1 				= new LanguageISO639_1( "co" );
		public static const CREE: LanguageISO639_1 					= new LanguageISO639_1( "cr" );
		public static const WELSH: LanguageISO639_1 				= new LanguageISO639_1( "cy" );
		public static const DANISH: LanguageISO639_1 				= new LanguageISO639_1( "da" );
		public static const DIVEHI: LanguageISO639_1 				= new LanguageISO639_1( "dv" );
		public static const DHIVEHI: LanguageISO639_1				= new LanguageISO639_1( "dv" );
		public static const MALDIVIAN: LanguageISO639_1 			= new LanguageISO639_1( "dv" );
		public static const DUTCH: LanguageISO639_1 				= new LanguageISO639_1( "nl" );
		public static const FLEMISH: LanguageISO639_1 				= new LanguageISO639_1( "nl" );
		public static const DZONGKHA: LanguageISO639_1 				= new LanguageISO639_1( "dz" );
		public static const GREEK: LanguageISO639_1 				= new LanguageISO639_1( "el" );
		public static const ENGLISH: LanguageISO639_1 				= new LanguageISO639_1( "en" );
		public static const ESPERANTO: LanguageISO639_1 			= new LanguageISO639_1( "eo" );
		public static const ESTONIAN: LanguageISO639_1 				= new LanguageISO639_1( "et" );
		public static const EWE: LanguageISO639_1 					= new LanguageISO639_1( "ee" );
		public static const FAROESE: LanguageISO639_1 				= new LanguageISO639_1( "fo" );
		public static const PERSIAN: LanguageISO639_1 				= new LanguageISO639_1( "fa" );
		public static const FIJIAN: LanguageISO639_1 				= new LanguageISO639_1( "fj" );
		public static const FINNISH: LanguageISO639_1 				= new LanguageISO639_1( "fi" );
		public static const FRENCH: LanguageISO639_1 				= new LanguageISO639_1( "fr" );
		public static const WESTERN_FRISIAN: LanguageISO639_1 		= new LanguageISO639_1( "fy" );
		public static const FULAH: LanguageISO639_1 				= new LanguageISO639_1( "ff" );
		public static const GEORGIAN: LanguageISO639_1 				= new LanguageISO639_1( "ka" );
		public static const GERMAN: LanguageISO639_1 				= new LanguageISO639_1( "de" );
		public static const GAELIC: LanguageISO639_1 				= new LanguageISO639_1( "gd" );
		public static const SCOTTISH_GAELIC: LanguageISO639_1 		= new LanguageISO639_1( "gd" );
		public static const IRISH: LanguageISO639_1 				= new LanguageISO639_1( "ga" );
		public static const GALICIAN: LanguageISO639_1 				= new LanguageISO639_1( "gl" );
		public static const MANX: LanguageISO639_1 					= new LanguageISO639_1( "gv" );
		public static const GUARANI: LanguageISO639_1 				= new LanguageISO639_1( "gn" );
		public static const GUJARATI: LanguageISO639_1 				= new LanguageISO639_1( "gu" );
		public static const HATIAN: LanguageISO639_1 				= new LanguageISO639_1( "ht" );
		public static const HATIAN_CREOLE: LanguageISO639_1 		= new LanguageISO639_1( "ht" );
		public static const HAUSA: LanguageISO639_1 				= new LanguageISO639_1( "ha" );
		public static const HEBREW: LanguageISO639_1 				= new LanguageISO639_1( "he" );
		public static const HERERO: LanguageISO639_1 				= new LanguageISO639_1( "hz" );
		public static const HINDI: LanguageISO639_1 				= new LanguageISO639_1( "hi" );
		public static const HIRI_MOTU: LanguageISO639_1 			= new LanguageISO639_1( "ho" );
		public static const CROATIAN: LanguageISO639_1 				= new LanguageISO639_1( "hr" );
		public static const HUNGARIAN: LanguageISO639_1 			= new LanguageISO639_1( "hu" );
		public static const IGBO: LanguageISO639_1 					= new LanguageISO639_1( "ig" );
		public static const ICELANDIC: LanguageISO639_1 			= new LanguageISO639_1( "is" );
		public static const IDO: LanguageISO639_1 					= new LanguageISO639_1( "io" );
		public static const SICHUAN_YI: LanguageISO639_1 			= new LanguageISO639_1( "ii" );
		public static const NUOSU: LanguageISO639_1 				= new LanguageISO639_1( "ii" );
		public static const INUKTITUT: LanguageISO639_1 			= new LanguageISO639_1( "iu" );
		public static const INTERLINGUE: LanguageISO639_1 			= new LanguageISO639_1( "ie" );
		public static const OCCIDENTAL: LanguageISO639_1 			= new LanguageISO639_1( "ie" );
		public static const INTERLINGUA: LanguageISO639_1 			= new LanguageISO639_1( "ia" );
		public static const INDONESIAN: LanguageISO639_1 			= new LanguageISO639_1( "id" );
		public static const INUPIAQ: LanguageISO639_1 				= new LanguageISO639_1( "ik" );
		public static const ITALIAN: LanguageISO639_1 				= new LanguageISO639_1( "it" );
		public static const JAVANESE: LanguageISO639_1 				= new LanguageISO639_1( "jv" );
		public static const JAPANESE: LanguageISO639_1 				= new LanguageISO639_1( "ja" );
		public static const KALAALLISUT: LanguageISO639_1 			= new LanguageISO639_1( "kl" );
		public static const GREENLANDIC: LanguageISO639_1 			= new LanguageISO639_1( "kl" );
		public static const KANNADA: LanguageISO639_1 				= new LanguageISO639_1( "kn" );
		public static const KASHMIRI: LanguageISO639_1 				= new LanguageISO639_1( "ks" );
		public static const KANURI: LanguageISO639_1 				= new LanguageISO639_1( "kr" );
		public static const KAZAKH: LanguageISO639_1 				= new LanguageISO639_1( "kk" );
		public static const CENTRAL_KHMER: LanguageISO639_1 		= new LanguageISO639_1( "km" );
		public static const KIKUYU: LanguageISO639_1 				= new LanguageISO639_1( "ki" );
		public static const GIKUYU: LanguageISO639_1 				= new LanguageISO639_1( "ki" );
		public static const KINYARWANDA: LanguageISO639_1 			= new LanguageISO639_1( "rw" );
		public static const KIRGHIZ: LanguageISO639_1 				= new LanguageISO639_1( "ky" );
		public static const KYRGYZ: LanguageISO639_1 				= new LanguageISO639_1( "ky" );
		public static const KOMI: LanguageISO639_1 					= new LanguageISO639_1( "kv" );
		public static const KONGO: LanguageISO639_1 				= new LanguageISO639_1( "kg" );
		public static const KOREAN: LanguageISO639_1 				= new LanguageISO639_1( "ko" );
		public static const KUANYAMA: LanguageISO639_1 				= new LanguageISO639_1( "kj" );
		public static const KWANYAMA: LanguageISO639_1 				= new LanguageISO639_1( "kj" );
		public static const KURDISH: LanguageISO639_1 				= new LanguageISO639_1( "ku" );
		public static const LAO: LanguageISO639_1 					= new LanguageISO639_1( "lo" );
		public static const LATIN: LanguageISO639_1 				= new LanguageISO639_1( "la" );
		public static const LATVIAN: LanguageISO639_1 				= new LanguageISO639_1( "lv" );
		public static const LIMBURGAN: LanguageISO639_1 			= new LanguageISO639_1( "li" );
		public static const LIMBURGER: LanguageISO639_1 			= new LanguageISO639_1( "li" );
		public static const LIMBURGISH: LanguageISO639_1 			= new LanguageISO639_1( "li" );
		public static const LINGALA: LanguageISO639_1 				= new LanguageISO639_1( "ln" );
		public static const LITHUANIAN: LanguageISO639_1 			= new LanguageISO639_1( "lt" );
		public static const LUXOMBOURGISH: LanguageISO639_1 		= new LanguageISO639_1( "lb" );
		public static const LETZBURGESCH: LanguageISO639_1 			= new LanguageISO639_1( "lb" );
		public static const LUBA_KATANGA: LanguageISO639_1 			= new LanguageISO639_1( "lu" );
		public static const GANDA: LanguageISO639_1 				= new LanguageISO639_1( "lg" );
		public static const MACEDONIAN: LanguageISO639_1 			= new LanguageISO639_1( "mk" );
		public static const MARSALLESE: LanguageISO639_1 			= new LanguageISO639_1( "mh" );
		public static const MALAYALAM: LanguageISO639_1 			= new LanguageISO639_1( "ml" );
		public static const MAORI: LanguageISO639_1 				= new LanguageISO639_1( "mi" );
		public static const MARATHI: LanguageISO639_1 				= new LanguageISO639_1( "mr" );
		public static const MALAY: LanguageISO639_1 				= new LanguageISO639_1( "ms" );
		public static const MALAGASY: LanguageISO639_1 				= new LanguageISO639_1( "mg" );
		public static const MONGOLIAN: LanguageISO639_1 			= new LanguageISO639_1( "mn" );
		public static const NAURU: LanguageISO639_1 				= new LanguageISO639_1( "na" );
		public static const NAVAJO: LanguageISO639_1 				= new LanguageISO639_1( "nv" );
		public static const NAVAHO: LanguageISO639_1 				= new LanguageISO639_1( "nv" );
		public static const NDEBELE: LanguageISO639_1 				= new LanguageISO639_1( "nr" );
		public static const NORTH_NDEBELE: LanguageISO639_1 		= new LanguageISO639_1( "nr" );
		public static const NDONGA: LanguageISO639_1 				= new LanguageISO639_1( "ng" );
		public static const NEPALI: LanguageISO639_1 				= new LanguageISO639_1( "ne" );
		public static const NORWEGIAN: LanguageISO639_1 			= new LanguageISO639_1( "no" );
		public static const NYNORSK: LanguageISO639_1 				= new LanguageISO639_1( "nn" );
		public static const NORWEGIAN_BOKMAL: LanguageISO639_1 		= new LanguageISO639_1( "nb" );
		public static const CHICHEWA: LanguageISO639_1 				= new LanguageISO639_1( "ny" );
		public static const CHEWA: LanguageISO639_1 				= new LanguageISO639_1( "ny" );
		public static const NYANJA: LanguageISO639_1 				= new LanguageISO639_1( "ny" );
		public static const OCCITAN: LanguageISO639_1 				= new LanguageISO639_1( "oc" );
		public static const OJIBWA: LanguageISO639_1 				= new LanguageISO639_1( "oj" );
		public static const ORIYA: LanguageISO639_1 				= new LanguageISO639_1( "or" );
		public static const OROMO: LanguageISO639_1 				= new LanguageISO639_1( "om" );
		public static const OSSETIAN: LanguageISO639_1 				= new LanguageISO639_1( "os" );
		public static const OSSETIC: LanguageISO639_1 				= new LanguageISO639_1( "os" );
		public static const PANJABI: LanguageISO639_1 				= new LanguageISO639_1( "pa" );
		public static const PUNJABI: LanguageISO639_1 				= new LanguageISO639_1( "pa" );
		public static const PALI: LanguageISO639_1 					= new LanguageISO639_1( "pi" );
		public static const POLISH: LanguageISO639_1 				= new LanguageISO639_1( "pl" );
		public static const POTUGUESE: LanguageISO639_1 			= new LanguageISO639_1( "pt" );
		public static const PUSHTO: LanguageISO639_1 				= new LanguageISO639_1( "ps" );
		public static const PASHTO: LanguageISO639_1 				= new LanguageISO639_1( "ps" );
		public static const QUECHUA: LanguageISO639_1 				= new LanguageISO639_1( "qu" );
		public static const ROMANSH: LanguageISO639_1 				= new LanguageISO639_1( "rm" );
		public static const ROMANIAN: LanguageISO639_1 				= new LanguageISO639_1( "ro" );
		public static const MOLDOVIAN: LanguageISO639_1 			= new LanguageISO639_1( "ro" );
		public static const MOLDOVAN: LanguageISO639_1 				= new LanguageISO639_1( "ro" );
		public static const RUNDI: LanguageISO639_1 				= new LanguageISO639_1( "rn" );
		public static const RUSSIAN: LanguageISO639_1 				= new LanguageISO639_1( "ru" );
		public static const SANGO: LanguageISO639_1 				= new LanguageISO639_1( "sg" );
		public static const SANSKRIT: LanguageISO639_1				= new LanguageISO639_1( "sa" );
		public static const SINHALA: LanguageISO639_1 				= new LanguageISO639_1( "si" );
		public static const SINHALESE: LanguageISO639_1 			= new LanguageISO639_1( "si" );
		public static const SLOVAK: LanguageISO639_1 				= new LanguageISO639_1( "sk" );
		public static const SLOVENIAN: LanguageISO639_1 			= new LanguageISO639_1( "sl" );
		public static const NORTHERN_SAMI: LanguageISO639_1 		= new LanguageISO639_1( "se" );
		public static const SAMOAN: LanguageISO639_1 				= new LanguageISO639_1( "sm" );
		public static const SHONA: LanguageISO639_1 				= new LanguageISO639_1( "sn" );
		public static const SINDHI: LanguageISO639_1 				= new LanguageISO639_1( "sd" );
		public static const SOMALI: LanguageISO639_1 				= new LanguageISO639_1( "so" );
		public static const SOTHO: LanguageISO639_1 				= new LanguageISO639_1( "st" );
		public static const SPANISH: LanguageISO639_1 				= new LanguageISO639_1( "es" );
		public static const CASTILIAN: LanguageISO639_1 			= new LanguageISO639_1( "es" );
		public static const ALBANIAN: LanguageISO639_1 				= new LanguageISO639_1( "sq" );
		public static const SARDINIAN: LanguageISO639_1 			= new LanguageISO639_1( "sc" );
		public static const SERBIAN: LanguageISO639_1 				= new LanguageISO639_1( "sr" );
		public static const SWATI: LanguageISO639_1 				= new LanguageISO639_1( "ss" );
		public static const SUDANESE: LanguageISO639_1 				= new LanguageISO639_1( "su" );
		public static const SWAHILI: LanguageISO639_1 				= new LanguageISO639_1( "sw" );
		public static const SWEDISH: LanguageISO639_1 				= new LanguageISO639_1( "sv" );
		public static const TAHITIAN: LanguageISO639_1 				= new LanguageISO639_1( "ty" );
		public static const TAMIL: LanguageISO639_1 				= new LanguageISO639_1( "ta" );
		public static const TATAT: LanguageISO639_1 				= new LanguageISO639_1( "tt" );
		public static const TELUGA: LanguageISO639_1 				= new LanguageISO639_1( "te" );
		public static const TAJIK: LanguageISO639_1 				= new LanguageISO639_1( "tg" );
		public static const TAGALOG: LanguageISO639_1 				= new LanguageISO639_1( "tl" );
		public static const THAI: LanguageISO639_1 					= new LanguageISO639_1( "th" );
		public static const TIGRINYA: LanguageISO639_1 				= new LanguageISO639_1( "ti" );
		public static const TONGO: LanguageISO639_1 				= new LanguageISO639_1( "to" );
		public static const TSWANA: LanguageISO639_1 				= new LanguageISO639_1( "tn" );
		public static const TSONGO: LanguageISO639_1 				= new LanguageISO639_1( "ts" );
		public static const TURKMEN: LanguageISO639_1 				= new LanguageISO639_1( "tk" );
		public static const TURKISH: LanguageISO639_1 				= new LanguageISO639_1( "tr" );
		public static const TWI: LanguageISO639_1 					= new LanguageISO639_1( "tw" );
		public static const UIGHUR: LanguageISO639_1 				= new LanguageISO639_1( "ug" );
		public static const UYGHUR: LanguageISO639_1 				= new LanguageISO639_1( "ug" );
		public static const UKRANIAN: LanguageISO639_1 				= new LanguageISO639_1( "uk" );
		public static const URDU: LanguageISO639_1 					= new LanguageISO639_1( "ur" );
		public static const UZBEK: LanguageISO639_1 				= new LanguageISO639_1( "uz" );
		public static const VENDA: LanguageISO639_1 				= new LanguageISO639_1( "ve" );
		public static const VIETNAMESE: LanguageISO639_1 			= new LanguageISO639_1( "vi" );
		public static const VOLAPUK: LanguageISO639_1 				= new LanguageISO639_1( "vo" );
		public static const WALLOON: LanguageISO639_1 				= new LanguageISO639_1( "wa" );
		public static const WOLOF: LanguageISO639_1 				= new LanguageISO639_1( "wo" );
		public static const XHOSA: LanguageISO639_1 				= new LanguageISO639_1( "xh" );
		public static const YIDDISH: LanguageISO639_1 				= new LanguageISO639_1( "yi" );
		public static const YORUBA: LanguageISO639_1 				= new LanguageISO639_1( "yo" );
		public static const ZHUANG: LanguageISO639_1 				= new LanguageISO639_1( "za" );
		public static const CHUANG: LanguageISO639_1 				= new LanguageISO639_1( "za" );
		public static const CHINESE: LanguageISO639_1 				= new LanguageISO639_1( "zh" );
		public static const ZULU: LanguageISO639_1 					= new LanguageISO639_1( "zu" );
		
		private var mCode: String;
		
		/**
		 * Constructor - Creates a new <code>LanguageISO639_1</code> Object. <code>LanguageISO639_1</code> contains
		 * all standard languages e.g. <code>LanguageISO639_1.ENGLISH</code> as const statics.
		 * 
		 * @param	code	The ISO 639/1 ICANN defined country code
		 */
		public function LanguageISO639_1( code: String ) 
		{
			mCode = code;
		}
		
		/**
		 * Tests this object for equality against another provided object
		 * @param	o	An object to compare equality
		 * @return	True if the two objects are equal, otherwise false
		 */
		public function equals( o: Object ): Boolean
		{
			if ( !(o is LanguageISO639_1) )
			{
				return false;
			}
			return mCode == LanguageISO639_1( o ).code;
		}
		
		
		/**
		 * Get the ISO 639/1 ICANN defined country code associated with this <code>LanguageISO_1</code> object
		 * @see http://en.wikipedia.org/wiki/ISO_639-1
		 */
		public function get code(): String
		{
			return mCode;
		}
		
		/**
		 * Gets the full list of <code>LanguageISO_1</code> objects as a <code>Vector</code>
		 * @return	The list of <code>LanguageISO_1</code> objects as a <code>Vector</code>
		 */
		public static function toVector(): Vector.<LanguageISO639_1>
		{
			return Vector.<LanguageISO639_1>(
						[
									AFAR,
									ABKHAZIAN,
									AFRIKAANS,
									AKAN,
									AMHARIC,
									ARABIC,
									ARMENIAN,
									ASSAMESE,
									AVERIC,
									AVESTAN,
									AYMARA,
									AZERBAIJANI,
									BASHKIR,
									BAMBARA,
									BASQUE,
									BELARUSIAN,
									BENGALI,
									BIHARI_LANGUAGES,
									BISLAMA,
									TIBETAN,
									BOSNIAN,
									BRETON,
									BULGARIAN,
									BURMESE,
									CATALAN,
									VALENCIAN,
									CZECH,
									CHAMORRO,
									CHECHEN,
									CHURCH_SLAVIC,
									OLD_SLAVONIC,
									CHURCH_SLAVONIC,
									OLD_BULGARIAN,
									OLD_CHURCH_SLAVONIC,
									CHUVASH,
									CORNISH,
									CORSICAN,
									CREE,
									WELSH,
									DANISH,
									DIVEHI,
									DHIVEHI,
									MALDIVIAN,
									DUTCH,
									FLEMISH,
									DZONGKHA,
									GREEK,
									ENGLISH,
									ESPERANTO,
									ESTONIAN,
									EWE,
									FAROESE,
									PERSIAN,
									FIJIAN,
									FINNISH,
									FRENCH,
									WESTERN_FRISIAN,
									FULAH,
									GEORGIAN,
									GERMAN,
									GAELIC,
									SCOTTISH_GAELIC,
									IRISH,
									GALICIAN,
									MANX,
									GUARANI,
									GUJARATI,
									HATIAN,
									HATIAN_CREOLE,
									HAUSA,
									HEBREW,
									HERERO,
									HINDI,
									HIRI_MOTU,
									CROATIAN,
									HUNGARIAN,
									IGBO,
									ICELANDIC,
									IDO,
									SICHUAN_YI,
									NUOSU,
									INUKTITUT,
									INTERLINGUE,
									OCCIDENTAL,
									INTERLINGUA,
									INDONESIAN,
									INUPIAQ,
									ITALIAN,
									JAVANESE,
									JAPANESE,
									KALAALLISUT,
									GREENLANDIC,
									KANNADA,
									KASHMIRI,
									KANURI,
									KAZAKH,
									CENTRAL_KHMER,
									KIKUYU,
									GIKUYU,
									KINYARWANDA,
									KIRGHIZ,
									KYRGYZ,
									KOMI,
									KONGO,
									KOREAN,
									KUANYAMA,
									KWANYAMA,
									KURDISH,
									LAO,
									LATIN,
									LATVIAN,
									LIMBURGAN,
									LIMBURGER,
									LIMBURGISH,
									LINGALA,
									LITHUANIAN,
									LUXOMBOURGISH,
									LETZBURGESCH,
									LUBA_KATANGA,
									GANDA,
									MACEDONIAN,
									MARSALLESE,
									MALAYALAM,
									MAORI,
									MARATHI,
									MALAY,
									MALAGASY,
									MONGOLIAN,
									NAURU,
									NAVAJO,
									NAVAHO,
									NDEBELE,
									NORTH_NDEBELE,
									NDONGA,
									NEPALI,
									NORWEGIAN,
									NYNORSK,
									NORWEGIAN_BOKMAL,
									CHICHEWA,
									CHEWA,
									NYANJA,
									OCCITAN,
									OJIBWA,
									ORIYA,
									OROMO,
									OSSETIAN,
									OSSETIC,
									PANJABI,
									PUNJABI,
									PALI,
									POLISH,
									POTUGUESE,
									PUSHTO,
									PASHTO,
									QUECHUA,
									ROMANSH,
									ROMANIAN,
									MOLDOVIAN,
									MOLDOVAN,
									RUNDI,
									RUSSIAN,
									SANGO,
									SANSKRIT,
									SINHALA,
									SINHALESE,
									SLOVAK,
									SLOVENIAN,
									NORTHERN_SAMI,
									SAMOAN,
									SHONA,
									SINDHI,
									SOMALI,
									SOTHO,
									SPANISH,
									CASTILIAN,
									ALBANIAN,
									SARDINIAN,
									SERBIAN,
									SWATI,
									SUDANESE,
									SWAHILI,
									SWEDISH,
									TAHITIAN,
									TAMIL,
									TATAT,
									TELUGA,
									TAJIK,
									TAGALOG,
									THAI,
									TIGRINYA,
									TONGO,
									TSWANA,
									TSONGO,
									TURKMEN,
									TURKISH,
									TWI,
									UIGHUR,
									UYGHUR,
									UKRANIAN,
									URDU,
									UZBEK,
									VENDA,
									VIETNAMESE,
									VOLAPUK,
									WALLOON,
									WOLOF,
									XHOSA,
									YIDDISH,
									YORUBA,
									ZHUANG,
									CHUANG,
									CHINESE,
									ZULU
						]);
		}
	}

}