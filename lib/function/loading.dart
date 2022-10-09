import 'package:flutter/material.dart';

loading(BuildContext context) => showDialog(
      barrierColor: Colors.white.withOpacity(0.5),
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return const WillPopScope(
          onWillPop: null,
          child: AlertDialog(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            content: Center(
              child: CircularProgressIndicator(
                color: Colors.yellow,
              ),
            ),
          ),
        );
      },
    );