import 'package:auth0_web_auth/auth0_web_auth.dart';
import 'package:flutter/material.dart';

void main() async {
  var auth0Client = await Auth0.create(const Auth0ClientOptions(
      domain: 'example-domain.eu.auth0.com', // Your domain
      clientId: 'asdfgh123456', // Your client id
      redirectUri: 'http://example.com',
      audience: 'https://example/api', // Your audience
      useRefreshTokens: true,
      cacheLocation: 'localstorage'));

  runApp(MyApp(
    auth0Client: auth0Client,
  ));
}

class MyApp extends StatelessWidget {
  final Auth0Client auth0Client;
  const MyApp({Key? key, required this.auth0Client}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Auth0 Web authentication example',
        auth0client: auth0Client,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required this.auth0client})
      : super(key: key);

  final String title;
  final Auth0Client auth0client;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  widget.auth0client.loginWithRedirect(
                      const RedirectLoginOptions(uiLocales: 'hu'));
                },
                child: const Text('Authenticate'))
          ],
        ),
      ),
    );
  }
}
