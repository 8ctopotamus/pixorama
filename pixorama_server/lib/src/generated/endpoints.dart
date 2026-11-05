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
import '../endpoints/pixorama_endpoint.dart' as _i2xpusw1;

class Endpoints extends _is.EndpointDispatch {
  @override
  void initializeEndpoints(_is.Server server) {
    var endpoints = <String, _is.Endpoint>{
      'pixorama': _i2xpusw1.PixoramaEndpoint()
        ..initialize(
          server,
          'pixorama',
          null,
        ),
    };
    connectors['pixorama'] = _is.EndpointConnector(
      name: 'pixorama',
      endpoint: endpoints['pixorama']!,
      methodConnectors: {
        'setPixel': _is.MethodConnector(
          name: 'setPixel',
          params: {
            'colorIndex': _is.ParameterDescription(
              name: 'colorIndex',
              type: _is.getType<int>(),
              nullable: false,
            ),
            'pixelIndex': _is.ParameterDescription(
              name: 'pixelIndex',
              type: _is.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['pixorama'] as _i2xpusw1.PixoramaEndpoint)
                  .setPixel(
                    session,
                    colorIndex: params['colorIndex'],
                    pixelIndex: params['pixelIndex'],
                  ),
        ),
        'imageUpdates': _is.MethodStreamConnector(
          name: 'imageUpdates',
          params: {},
          streamParams: {},
          returnType: _is.MethodStreamReturnType.streamType,
          call:
              (
                _is.Session session,
                Map<String, dynamic> params,
                Map<String, Stream> streamParams,
              ) => (endpoints['pixorama'] as _i2xpusw1.PixoramaEndpoint)
                  .imageUpdates(session),
        ),
      },
    );
  }
}
