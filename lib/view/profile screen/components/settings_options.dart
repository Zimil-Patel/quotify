import 'package:flutter/material.dart';
import 'package:quotify/view/profile%20screen/components/setting_contanier.dart';

import '../../../utils/global list/profile_list.dart';

Column setting_option(BuildContext context) {
  return Column(
    children: List.generate(
      profileList.length,
          (index) => settingContainer(context, index,
          profileList[index]['name'], profileList[index]['icon'], true),
    ),
  );
}