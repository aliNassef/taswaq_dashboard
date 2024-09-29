import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entity/privacy_entity.dart';

import '../../../../core/shared/widgets/default_app_button.dart';
import '../../../../core/utils/app_colors.dart';
import '../manger/privacy_cubit/privacy_cubit.dart';

class AddorCancelUpdates extends StatelessWidget {
  const AddorCancelUpdates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const DefaultAppButton(
            text: 'cancel',
            backgroundColor: AppColors.blackColor,
            textColor: Colors.white,
          ),
          DefaultAppButton(
            onPressed: () async {
              await addData(context);
            },
            padding: 0,
            text: 'add',
            backgroundColor: AppColors.blackColor,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }

  Future<void> addData(BuildContext context) async {
    final cubit = context.read<PrivacyCubit>();
    final PrivacyEntity data = PrivacyEntity(
      childrenPrivacy: cubit.childrenPrivacy.text,
      collectionInfo: cubit.collectionInfo.text,
      dataSecurity: cubit.dataSecurity.text,
      ourPolicy: cubit.ourPolicy.text,
      sharingInfo: cubit.sharingInfo.text,
      updatesPrivacy: cubit.updatesPrivacy.text,
      useInfo: cubit.useInfo.text,
      userRights: cubit.userRights.text,
    );
    await cubit.addData(data: data);
  }
}
