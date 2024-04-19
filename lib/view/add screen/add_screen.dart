import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15),
        child: Column(
          children: [
            Row(
              children: [
                 Icon(CupertinoIcons.arrow_left),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Add new',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
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
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 40),
              child: Container(
                height: 40,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xff344050),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                      ),
                  hintText: 'Quotes'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 40),
              child: Container(
                height: 40,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Color(0xff344050),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Author(optional)'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
