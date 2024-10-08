// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_element, unused_field, return_of_invalid_type, void_checks, annotate_overrides, no_leading_underscores_for_local_identifiers, library_private_types_in_public_api, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Bindings for `string_tokenizer`.
///
/// Regenerate bindings with `flutter pub run ffigen --config ffigen.yaml`.
///
class CFStringTokenizer {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  CFStringTokenizer(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  CFStringTokenizer.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void CFRelease(
    ffi.Pointer<ffi.Void> cf,
  ) {
    return _CFRelease(
      cf,
    );
  }

  late final _CFReleasePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'CFRelease');
  late final _CFRelease =
      _CFReleasePtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  ffi.Pointer<__CFString> CFStringCreateWithCString(
    ffi.Pointer<__CFAllocator> alloc,
    ffi.Pointer<ffi.Char> cStr,
    int encoding,
  ) {
    return _CFStringCreateWithCString(
      alloc,
      cStr,
      encoding,
    );
  }

  late final _CFStringCreateWithCStringPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<__CFString> Function(
              ffi.Pointer<__CFAllocator>,
              ffi.Pointer<ffi.Char>,
              ffi.UnsignedInt)>>('CFStringCreateWithCString');
  late final _CFStringCreateWithCString =
      _CFStringCreateWithCStringPtr.asFunction<
          ffi.Pointer<__CFString> Function(
              ffi.Pointer<__CFAllocator>, ffi.Pointer<ffi.Char>, int)>();

  /// !
  /// @function CFStringTokenizerCreate
  /// @abstract Creates a tokenizer instance.
  /// @param alloc The CFAllocator which should be used to allocate memory for the
  /// tokenizer and its storage for values. This parameter may be NULL in which
  /// case the current default CFAllocator is used.
  /// @param string The string to tokenize.
  /// @param range The range of characters within the string to be tokenized. The
  /// specified range must not exceed the length of the string.
  /// @param options Use one of the Tokenization Unit options to specify how the
  /// string should be tokenized. Optionally specify one or more attribute
  /// specifiers to tell the tokenizer to prepare specified attributes when it
  /// tokenizes the string.
  /// @param locale The locale to specify language or region specific behavior. Pass
  /// NULL if you want tokenizer to identify the locale automatically.
  /// @result A reference to the new CFStringTokenizer.
  ffi.Pointer<__CFStringTokenizer> CFStringTokenizerCreate(
    ffi.Pointer<__CFAllocator> alloc,
    ffi.Pointer<__CFString> string,
    CFRange range,
    int options,
    ffi.Pointer<__CFLocale> locale,
  ) {
    return _CFStringTokenizerCreate(
      alloc,
      string,
      range,
      options,
      locale,
    );
  }

  late final _CFStringTokenizerCreatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<__CFStringTokenizer> Function(
              ffi.Pointer<__CFAllocator>,
              ffi.Pointer<__CFString>,
              CFRange,
              ffi.UnsignedLong,
              ffi.Pointer<__CFLocale>)>>('CFStringTokenizerCreate');
  late final _CFStringTokenizerCreate = _CFStringTokenizerCreatePtr.asFunction<
      ffi.Pointer<__CFStringTokenizer> Function(ffi.Pointer<__CFAllocator>,
          ffi.Pointer<__CFString>, CFRange, int, ffi.Pointer<__CFLocale>)>();

  /// !
  /// @function CFStringTokenizerAdvanceToNextToken
  /// @abstract Token enumerator.
  /// @param tokenizer The reference to CFStringTokenizer returned by
  /// CFStringTokenizerCreate.
  /// @result Type of the token if succeeded in finding a token and setting it as
  /// current token. kCFStringTokenizerTokenNone if failed in finding a token.
  /// @discussion If there is no preceding call to CFStringTokenizerGoToTokenAtIndex
  /// or CFStringTokenizerAdvanceToNextToken, it finds the first token in the range
  /// specified to CFStringTokenizerCreate. If there is a current token after successful
  /// call to CFStringTokenizerGoToTokenAtIndex or CFStringTokenizerAdvanceToNextToken,
  /// it proceeds to the next token. If succeeded in finding a token, set it as current
  /// token and return its token type. Otherwise invalidate current token and return
  /// kCFStringTokenizerTokenNone.
  /// The range and attribute of the token can be obtained by calling
  /// CFStringTokenizerGetCurrentTokenRange and
  /// CFStringTokenizerCopyCurrentTokenAttribute. If the token is a compound
  /// (with type kCFStringTokenizerTokenHasSubTokensMask or
  /// kCFStringTokenizerTokenHasDerivedSubTokensMask), its subtokens and
  /// (or) derived subtokens can be obtained by calling CFStringTokenizerGetCurrentSubTokens.
  int CFStringTokenizerAdvanceToNextToken(
    ffi.Pointer<__CFStringTokenizer> tokenizer,
  ) {
    return _CFStringTokenizerAdvanceToNextToken(
      tokenizer,
    );
  }

  late final _CFStringTokenizerAdvanceToNextTokenPtr = _lookup<
          ffi.NativeFunction<
              ffi.UnsignedLong Function(ffi.Pointer<__CFStringTokenizer>)>>(
      'CFStringTokenizerAdvanceToNextToken');
  late final _CFStringTokenizerAdvanceToNextToken =
      _CFStringTokenizerAdvanceToNextTokenPtr.asFunction<
          int Function(ffi.Pointer<__CFStringTokenizer>)>();

  /// !
  /// @function CFStringTokenizerGetCurrentTokenRange
  /// @abstract Returns the range of current token.
  /// @param tokenizer The reference to CFStringTokenizer returned by
  /// CFStringTokenizerCreate.
  /// @result Range of current token, or {kCFNotFound,0} if there is no current token.
  CFRange CFStringTokenizerGetCurrentTokenRange(
    ffi.Pointer<__CFStringTokenizer> tokenizer,
  ) {
    return _CFStringTokenizerGetCurrentTokenRange(
      tokenizer,
    );
  }

  late final _CFStringTokenizerGetCurrentTokenRangePtr = _lookup<
          ffi
          .NativeFunction<CFRange Function(ffi.Pointer<__CFStringTokenizer>)>>(
      'CFStringTokenizerGetCurrentTokenRange');
  late final _CFStringTokenizerGetCurrentTokenRange =
      _CFStringTokenizerGetCurrentTokenRangePtr.asFunction<
          CFRange Function(ffi.Pointer<__CFStringTokenizer>)>();
}

enum CFStringBuiltInEncodings {
  kCFStringEncodingMacRoman(0),
  kCFStringEncodingWindowsLatin1(1280),
  kCFStringEncodingISOLatin1(513),
  kCFStringEncodingNextStepLatin(2817),
  kCFStringEncodingASCII(1536),
  kCFStringEncodingUnicode(256),
  kCFStringEncodingUTF8(134217984),
  kCFStringEncodingNonLossyASCII(3071),
  kCFStringEncodingUTF16BE(268435712),
  kCFStringEncodingUTF16LE(335544576),
  kCFStringEncodingUTF32(201326848),
  kCFStringEncodingUTF32BE(402653440),
  kCFStringEncodingUTF32LE(469762304);

  static const kCFStringEncodingUTF16 = kCFStringEncodingUnicode;

  final int value;
  const CFStringBuiltInEncodings(this.value);

  static CFStringBuiltInEncodings fromValue(int value) => switch (value) {
        0 => kCFStringEncodingMacRoman,
        1280 => kCFStringEncodingWindowsLatin1,
        513 => kCFStringEncodingISOLatin1,
        2817 => kCFStringEncodingNextStepLatin,
        1536 => kCFStringEncodingASCII,
        256 => kCFStringEncodingUnicode,
        134217984 => kCFStringEncodingUTF8,
        3071 => kCFStringEncodingNonLossyASCII,
        268435712 => kCFStringEncodingUTF16BE,
        335544576 => kCFStringEncodingUTF16LE,
        201326848 => kCFStringEncodingUTF32,
        402653440 => kCFStringEncodingUTF32BE,
        469762304 => kCFStringEncodingUTF32LE,
        _ => throw ArgumentError(
            "Unknown value for CFStringBuiltInEncodings: $value"),
      };

  @override
  String toString() {
    if (this == kCFStringEncodingUnicode)
      return "CFStringBuiltInEncodings.kCFStringEncodingUnicode, CFStringBuiltInEncodings.kCFStringEncodingUTF16";
    return super.toString();
  }
}

final class __CFString extends ffi.Opaque {}

final class __CFAllocator extends ffi.Opaque {}

final class __CFStringTokenizer extends ffi.Opaque {}

final class CFRange extends ffi.Struct {
  @ffi.Long()
  external int location;

  @ffi.Long()
  external int length;
}

final class __CFLocale extends ffi.Opaque {}

/// !
/// Token type
/// CFStringTokenizerGoToTokenAtIndex / CFStringTokenizerAdvanceToNextToken returns
/// the type of current token.
abstract class CFStringTokenizerTokenType {
  /// Have no token.
  static const kCFStringTokenizerTokenNone = 0;

  /// Normal token
  static const kCFStringTokenizerTokenNormal = 1;

  /// !
  /// Compound token which may contain subtokens but with no derived subtokens.
  /// Its subtokens can be obtained by calling CFStringTokenizerGetCurrentSubTokens.
  static const kCFStringTokenizerTokenHasSubTokensMask = 2;

  /// !
  /// Compound token which may contain derived subtokens.
  /// Its subtokens and derived subtokens can be obtained by calling
  /// CFStringTokenizerGetCurrentSubTokens.
  static const kCFStringTokenizerTokenHasDerivedSubTokensMask = 4;
  static const kCFStringTokenizerTokenHasHasNumbersMask = 8;
  static const kCFStringTokenizerTokenHasNonLettersMask = 16;
  static const kCFStringTokenizerTokenIsCJWordMask = 32;
}

const int kCFStringTokenizerUnitWord = 0;

const int kCFStringTokenizerUnitSentence = 1;

const int kCFStringTokenizerUnitParagraph = 2;

const int kCFStringTokenizerUnitLineBreak = 3;

const int kCFStringTokenizerUnitWordBoundary = 4;

const int kCFStringTokenizerAttributeLatinTranscription = 65536;

const int kCFStringTokenizerAttributeLanguage = 131072;
