import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotify/view/profile%20screen/components/head_name.dart';

import '../../../utils/global_variables.dart';
import 'components/pass_quotes_list.dart';

class PastQuotesScreen extends StatefulWidget {
  const PastQuotesScreen({super.key});

  @override
  State<PastQuotesScreen> createState() => _PastQuotesScreenState();
}

class _PastQuotesScreenState extends State<PastQuotesScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //HEAD OF SCREEN
            head_title(context, 'Past Quotes'),
            ...List.generate(6, (index) => Past_Quotes_Contanier(context),)
          ],
        ),
      ),
    );
  }
}
