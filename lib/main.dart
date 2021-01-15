import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trendy_stickers/modals/InstallStickersModal.dart';
import 'package:trendy_stickers/modals/StickerListModal.dart';
import 'package:trendy_stickers/screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StickerListModel()),
        ChangeNotifierProvider(create: (_) => InstallStickersModal()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trendy Stickers - Whatsapp Stickers',
        theme: ThemeData(
          primaryColor: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
      ),
    );
  }
}