import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quotify/utils/global_variables.dart';
import 'package:quotify/view/profile%20screen/components/head_name.dart';

class PersonDetailsScreen extends StatefulWidget {
  const PersonDetailsScreen({super.key});

  @override
  State<PersonDetailsScreen> createState() => _PersonDetailsScreenState();
}

class _PersonDetailsScreenState extends State<PersonDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          head_title(context, 'Person Info..'),
          Stack(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 20,top: 20),
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  radius: 70,
                  backgroundImage: (users[currentUser]['img'] != null)
                      ? FileImage(users[currentUser]['img']!)
                      : null,
                ),
              ),
              Positioned(
                top: 105,
                left: 105,
                child: CupertinoButton(
                  onPressed: () {
                    setImage();
                    setState(() {});
                  },
                  child: Center(
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:Theme.of(context).colorScheme.secondary,
                        border:
                        Border.all(color: Theme.of(context).colorScheme.surface, width: 4),
                      ),
                      child: Icon(
                        Icons.edit,
                        size: 15,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Name :',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  users[currentUser]['name'],
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your email:',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  users[currentUser]['email'],
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ) ,
    );
  }
  void setImage() async {
    XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      users[currentUser]['img'] = File(image!.path);
    });
  }
}

ImagePicker imagePicker = ImagePicker();
