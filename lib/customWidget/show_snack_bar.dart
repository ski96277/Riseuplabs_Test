import 'package:flutter/material.dart';

showSnackBar({BuildContext context, String message}){

  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    action: SnackBarAction(
      label: '',
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  )
  );

}
