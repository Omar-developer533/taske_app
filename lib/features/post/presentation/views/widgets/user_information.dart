import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taske_app/core/utls/app_style.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: SvgPicture.asset(
        'assets/image/image.svg',
        height: 36,
        width: 36,
      ),
      title: Text('Mike Chin', style: AppStyle.styleMedium14(context)),
      subtitle: Text('22ago', style: AppStyle.styleRegular12(context)),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
    );
  }
}
