import 'package:meta/meta.dart';
import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';
import 'package:shelf_plus/shelf_plus.dart';

import '/src/server.dart';

/// A mixin that implements version APIs.
mixin VersionApi on BaseRazerChromaRestServer {
  @mustCallSuper
  @protected
  @override
  RouterPlus buildInitializationRouter() => super.buildInitializationRouter()
    ..get(initializationApiPath, () => SdkVersion.target);
}
