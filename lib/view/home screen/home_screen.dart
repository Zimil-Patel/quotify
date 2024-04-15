import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 14,
                    color: Theme.of(context).colorScheme.shadow
                  )
                ]
              ),
              child: ListTile(
                title: Text('Title', style: Theme.of(context).textTheme.titleLarge,),
                subtitle: Text('Sub title', style: Theme.of(context).textTheme.bodyMedium,),
                leading: Icon(Icons.ac_unit, color: Theme.of(context).colorScheme.onSurface,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
