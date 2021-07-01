import 'dart:io';

/// The [InternetAddress] that the initialization server will listen on.
InternetAddress get initializationServerAddress => InternetAddress.loopbackIPv4;

/// The port that the initialization server runs on.
const initializationServerPort = 54235;

/// The base path of all initialization API endpoints.
const initializationApiPath = '/razer/chromasdk';
