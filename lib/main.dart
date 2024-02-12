
import 'package:flutter/material.dart';
import 'package:myvideo/config/theme/app_theme.dart';
import 'package:myvideo/presentation/providers/discover_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => DiscoverProvider(),)],
      child: MaterialApp(
        title: 'MyVideo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('MyVideo'),
          ),
          body: const Center(
            child: Text('Hi'),
          ),
        ),
      ),
    );
  }
}