import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BoardingStartButton extends StatelessWidget {
  final void Function() onPressed;
  const BoardingStartButton({
    Key key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.accentColor,
      child: Container(
        margin: const EdgeInsets.only(
          left: 40,
          right: 40,
          bottom: 40,
        ),
        child: FlatButton.icon(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          splashColor: theme.accentColor,
          onPressed: onPressed,
          icon: Icon(
            Ionicons.ios_checkmark_circle,
            color: theme.textTheme.bodyText1.color,
          ),
          label: Text(
            'Start',
            style: TextStyle(
              fontSize: 20,
              color: theme.textTheme.bodyText1.color,
            ),
          ),
        ),
      ),
    );
  }
}
