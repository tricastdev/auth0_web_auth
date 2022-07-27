import 'package:auth0_web_auth/src/definitions/auth0_definition.dart';

class GetTokenSilentlyOptions extends Auth0Definition {
  final String? audience;
  final bool? ignoreCache;
  final String? redirectUri;
  final String? scope;
  final Duration? timeout;

  const GetTokenSilentlyOptions({
    this.audience,
    this.ignoreCache,
    this.redirectUri,
    this.scope,
    this.timeout,
  });

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'audience': audience,
        'ignoreCache': ignoreCache,
        'redirect_uri': redirectUri,
        'scope': scope,
        'timeoutInSecond': timeout?.inSeconds,
      };
}
