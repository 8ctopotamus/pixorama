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
import 'package:serverpod/serverpod.dart' as _is;

abstract class ImageUpdate
    implements _is.SerializableModel, _is.ProtocolSerialization {
  ImageUpdate._({
    required this.pixelIndex,
    required this.colorIntex,
  });

  factory ImageUpdate({
    required int pixelIndex,
    required int colorIntex,
  }) = _ImageUpdateImpl;

  factory ImageUpdate.fromJson(Map<String, dynamic> jsonSerialization) {
    return ImageUpdate(
      pixelIndex: jsonSerialization['pixelIndex'] as int,
      colorIntex: jsonSerialization['colorIntex'] as int,
    );
  }

  int pixelIndex;

  int colorIntex;

  /// Returns a shallow copy of this [ImageUpdate]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ImageUpdate copyWith({
    int? pixelIndex,
    int? colorIntex,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ImageUpdate',
      'pixelIndex': pixelIndex,
      'colorIntex': colorIntex,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ImageUpdate',
      'pixelIndex': pixelIndex,
      'colorIntex': colorIntex,
    };
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _ImageUpdateImpl extends ImageUpdate {
  _ImageUpdateImpl({
    required int pixelIndex,
    required int colorIntex,
  }) : super._(
         pixelIndex: pixelIndex,
         colorIntex: colorIntex,
       );

  /// Returns a shallow copy of this [ImageUpdate]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  @override
  ImageUpdate copyWith({
    int? pixelIndex,
    int? colorIntex,
  }) {
    return ImageUpdate(
      pixelIndex: pixelIndex ?? this.pixelIndex,
      colorIntex: colorIntex ?? this.colorIntex,
    );
  }
}
