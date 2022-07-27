import 'package:auth0_web_auth/src/definitions/auth0_definition.dart';

class GetUserOptions extends Auth0Definition {
  final String? audience;
  final String? scope;

  const GetUserOptions({this.audience, this.scope});

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'audience': audience,
        'scope': scope,
      };
}
