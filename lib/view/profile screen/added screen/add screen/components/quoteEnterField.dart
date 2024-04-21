import 'package:flutter/material.dart';

Row quoteFormField(
    {required BuildContext context,
      IconData? iconData,
      required TextEditingController controller,
      TextInputType? textInputType,
      TextInputAction? textInputAction,
      required String hintText,}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(
        width: 14,
      ),
      Expanded(
        child: SizedBox(
          height: 60,
          child: TextFormField(
            controller: controller,
            cursorColor: Theme.of(context).colorScheme.onSurface,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus!.unfocus();
            },
            validator: (value) {
              if(hintText == 'Enter Quote'){
                if(value!.isEmpty || value == '')
                  return "Enter your quote!";
                else
                  return null;
              }
            },
            textInputAction: textInputAction ?? TextInputAction.next,
            keyboardType: textInputType ?? TextInputType.text,
            //DECORATION
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.grey),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 0.5, color: Theme.of(context).colorScheme.surface),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 1.2, color: Theme.of(context).colorScheme.surface),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2, color: Theme.of(context).colorScheme.onSurface),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}