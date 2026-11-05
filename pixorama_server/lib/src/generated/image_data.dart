/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _idt;
import 'package:serverpod/serverpod.dart' as _is;

abstract class ImageData
    implements _is.SerializableModel, _is.ProtocolSerialization {
  ImageData._({
    required this.pixels,
    required this.width,
    required this.height,
  });

  factory ImageData({
    required _idt.ByteData pixels,
    required int width,
    required int height,
  }) = _ImageDataImpl;

  factory ImageData.fromJson(Map<String, dynamic> jsonSerialization) {
    return ImageData(
      pixels: _is.ByteDataJsonExtension.fromJson(jsonSerialization['pixels']),
      width: jsonSerialization['width'] as int,
      height: jsonSerialization['height'] as int,
    );
  }

  _idt.ByteData pixels;

  int width;

  int height;

  /// Returns a shallow copy of this [ImageData]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ImageData copyWith({
    _idt.ByteData? pixels,
    int? width,
    int? height,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ImageData',
      'pixels': pixels.toJson(),
      'width': width,
      'height': height,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ImageData',
      'pixels': pixels.toJson(),
      'width': width,
      'height': height,
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _ImageDataImpl extends ImageData {
  _ImageDataImpl({
    required _idt.ByteData pixels,
    required int width,
    required int height,
  }) : super._(
         pixels: pixels,
         width: width,
         height: height,
       );

  /// Returns a shallow copy of this [ImageData]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ImageData copyWith({
    _idt.ByteData? pixels,
    int? width,
    int? height,
  }) {
    return ImageData(
      pixels: pixels ?? this.pixels.clone(),
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }
}
