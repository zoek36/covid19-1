import 'package:covid19/components/kgp-base-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class AppMove extends StatelessWidget {
  const AppMove({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _launchURL({String url}) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      body: KgpBasePage(
        title: 'New Version',
        children: [
          FlatButton.icon(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            icon: Icon(Ionicons.ios_open),
            label: Text('Install'),
            onPressed: () => _launchURL(
                url:
                    'https://apps.samsung.com/appquery/appDetail.as?appId=kerrongordon.github.io.korona19'),
          ),
        ],
      ),
    );
  }
}
