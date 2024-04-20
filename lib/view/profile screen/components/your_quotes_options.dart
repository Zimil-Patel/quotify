import 'package:flutter/material.dart';
import 'package:quotify/view/profile%20screen/components/setting_contanier.dart';

import '../../../utils/global list/profile_list.dart';

Column your_quotes_option(BuildContext context) {
  return Column(
    children: List.generate(
      profileList1.length,
          (index) => settingContainer(context, index,
          profileList1[index]['name'], profileList1[index]['icon'], false),
    ),
  );
}