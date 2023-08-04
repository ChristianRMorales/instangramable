// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagramfinal/views/components/constants/strings.dart';
import 'package:instagramfinal/views/components/dialogs/alert_dialog_model.dart';

@immutable
class LogoutDialog extends AlertDialogModel<bool> {
  const LogoutDialog()
      : super(
          title: Strings.logOut,
          message: Strings.areYouSureThatYouWantToLogOutOfTheApp,
          buttons: const {
            Strings.cancel: false,
            Strings.logOut: true,
          },
        );

  present(BuildContext context) {}
}
