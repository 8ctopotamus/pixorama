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
import 'dart:async' as _ida;
import 'package:http/http.dart' as _i85jenna;
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'protocol.dart' as _il2as5qe;

/// {@category Endpoint}
class EndpointPixorama extends _isc.EndpointRef {
  EndpointPixorama(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'pixorama';

  _ida.Future<void> setPixel({
    required int colorIndex,
    required int pixelIndex,
  }) => caller.callServerEndpoint<void>(
    'pixorama',
    'setPixel',
    {
      'colorIndex': colorIndex,
      'pixelIndex': pixelIndex,
    },
  );

  _ida.Stream<dynamic> imageUpdates() =>
      caller.callStreamingServerEndpoint<_ida.Stream<dynamic>, dynamic>(
        'pixorama',
        'imageUpdates',
        {},
        {},
      );
}

class Client extends _isc.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _isc.MethodCallContext,
      Object,
      StackTrace,
    )?
    onFailedCall,
    Function(_isc.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
    _i85jenna.Client? httpClientOverride,
  }) : super(
         host,
         _il2as5qe.Protocol(),
         securityContext: securityContext,
         streamingConnectionTimeout: streamingConnectionTimeout,
         connectionTimeout: connectionTimeout,
         onFailedCall: onFailedCall,
         onSucceededCall: onSucceededCall,
         disconnectStreamsOnLostInternetConnection:
             disconnectStreamsOnLostInternetConnection,
         httpClientOverride: httpClientOverride,
       ) {
    pixorama = EndpointPixorama(this);
  }

  late final EndpointPixorama pixorama;

  @override
  Map<String, _isc.EndpointRef> get endpointRefLookup => {'pixorama': pixorama};

  @override
  Map<String, _isc.ModuleEndpointCaller> get moduleLookup => {};
}
