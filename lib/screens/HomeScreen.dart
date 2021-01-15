import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:trendy_stickers/screens/StickerList.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trendy Stickers',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(icon: Icon(Icons.share, color: Colors.grey,), onPressed: () {
            Share.text('Share App', 'https://play.google.com/store/apps/details?id=com.noorisofttech.trendy_stickers', 'text/plain');
          }),
          IconButton(icon: Icon(Icons.star_rate, color: Colors.grey,), onPressed: () {
            _launchURL();
          }),
        ],
      ),
      body: StickerList(),
    );
  }

  _launchURL() async {
    const url = 'https://play.google.com/store/apps/details?id=com.noorisofttech.trendy_stickers';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}