// ignore_for_file: implementation_imports

import 'package:flutter/src/widgets/framework.dart';
import 'package:instagramfinal/views/components/constants/strings.dart';
import 'package:instagramfinal/views/components/dialogs/alert_dialog_model.dart';

@immutable
class DeleteDialog extends AlertDialogModel<bool> {
  const DeleteDialog({
    required String titleOfObjectToDelete,
  }) : super(
          title: '${Strings.delete} $titleOfObjectToDelete?',
          message:
              '${Strings.areYouSureYouWantToDeleteThis} $titleOfObjectToDelete?',
          buttons: const {
            Strings.cancel: false,
            Strings.delete: true,
          },
        );

  present(BuildContext context) {}
}
