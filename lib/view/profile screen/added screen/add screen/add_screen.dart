import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/view/profile%20screen/added%20screen/add%20screen/components/quoteEnterField.dart';
import 'package:quotify/view/profile%20screen/components/head_name.dart';

import '../../../../utils/models/user_model.dart';
import 'components/add_quote_button.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    userProvider = Provider.of<UserProvider>(context, listen: true);
    return Scaffold(
      body: Column(
        children: [
          head_title(context, 'Add Quote'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Write and share your own quotes. These will only visible to you.',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 18, color: Colors.grey),
                  ),
                ),
                Form(
                  key: addQuoteKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14, top: 20),
                        child: Text(
                          'Quote',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ),

                      //Quote enter
                      quoteFormField(
                          context: context,
                          controller: txtQuote,
                          hintText: 'Enter Quote'),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, top: 20),
                        child: Text(
                          'Author (Optional)',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ),

                      //Quote enter
                      quoteFormField(
                          context: context,
                          controller: txtAuthor,
                          hintText: 'Enter name'),
                    ],
                  ),
                ),
                addButton(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}
