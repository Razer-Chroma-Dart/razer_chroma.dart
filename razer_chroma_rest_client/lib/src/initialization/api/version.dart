import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';

import '/src/initialization/api/session.dart';
import '/src/razer_chroma_client.dart';

/// A mixin that implements version APIs.
mixin VersionApi on BaseRazerChromaClient {
  /// Retrieves the SDK version.
  ///
  /// Throws a [SocketException] if no connection can be made.
  /// Throws a [FormatException] if an invalid response is received.
  Future<SdkVersion> getVersion() =>
      get<Map<String, dynamic>>(SessionApi.initializationUri)
          .then((responseJson) => SdkVersion.fromJson(responseJson));
}
