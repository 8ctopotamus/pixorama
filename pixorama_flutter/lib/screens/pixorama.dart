import 'package:flutter/material.dart';
import 'package:pixels/pixels.dart';
import 'package:pixorama_client/pixorama_client.dart';

import '../client.dart';

class Pixorama extends StatefulWidget {
  const Pixorama({super.key});

  @override
  State<Pixorama> createState() => _PixoramaState();
}

class _PixoramaState extends State<Pixorama> {
  PixelImageController? _imageController;

  @override
  void initState() {
    super.initState();

    _listenToUpdates();
  }

  Future<void> _listenToUpdates() async {
    while (true) {
      try {
        // get stream of updates from server
        final imageUpdates = client.pixorama.imageUpdates();

        // listen for updates from the stream
        await for (final update in imageUpdates) {
          print(update);
          // This is a complete image update, containing all pixels in the image.
          // Create a new PixelImageController with the pixel data.
          if (update is ImageData) {
            setState(() {
              _imageController = PixelImageController(
                palette: PixelPalette.rPlace(),
                width: update.width,
                height: update.height,
              );
            });
          } else if (update is ImageUpdate) {
            // got an incremental update of the image. Just set the single pixel
            _imageController?.setPixelIndex(
              pixelIndex: update.pixelIndex,
              colorIndex: update.colorIndex,
            );
          }
        }
      } on MethodStreamException catch (_) {
        setState(() {
          _imageController = null;
        });
      }

      // wait 5 seconds before connecting again
      await Future.delayed(Duration(seconds: 5));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _imageController == null
          ? const CircularProgressIndicator()
          : PixelEditor(
              controller: _imageController!,
              onSetPixel: (details) {
                // When a user clicks a pixel we will get a callback from the
                // PixelImageController, with information about the changed
                // pixel. When that happens we call the setPixels method on
                // the server.
                client.pixorama.setPixel(
                  pixelIndex: details.tapDetails.index,
                  colorIndex: details.colorIndex,
                );
              },
            ),
    );
  }
}
