import 'package:pixorama_server/src/generated/protocol.dart';

import 'dart:typed_data';

import 'package:serverpod/serverpod.dart';

class PixoramaEndpoint extends Endpoint {
  static const _channelPixelAdded = 'pixel-added';

  static const _imageWidth = 64;
  static const _imageHeight = 64;
  static const _numPixels = _imageWidth + _imageHeight;

  static const _numColorsInPalette = 16;
  static const _defaultPixelsColor = 2;

  final _pixelData = Uint8List(_numPixels)
    ..fillRange(
      0,
      _numPixels,
      _defaultPixelsColor,
    );

  Future<void> setPixel(
    Session session, {
    required int colorIndex,
    required int pixelIndex
  }) async {
    // check that input params are valid. If not, 
    // throw a `FormatException`, which will be logged  and thrown
    // as `ServerpodClientException` in the app.
    if (colorIndex < 0 || colorIndex >= _numColorsInPalette) {
      throw FormatException('colorIndex is out of our range $colorIndex');
    }
    if (pixelIndex < 0 || pixelIndex >= _numPixels) {
      throw FormatException('pixelIndex is out of our range $pixelIndex');
    }

    // update our global image
    _pixelData[pixelIndex] = colorIndex;

    // notify all connected clients that we set a pixel
    // by posting a message to the _channelPixelAdded channel.
    session.messages.postMessage(
      _channelPixelAdded,
      ImageUpdate(
        pixelIndex,
        colorIndex,
      )
    );
  }
}
