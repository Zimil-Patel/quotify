import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/global_variables.dart';
import 'componets/them_title.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            themeTitle(context),
            const SizedBox(height: 20,),

            //PLAN BACKGROUND
            title_name(context,name: 'Plan Background'),
            category_grid_box(10,name: 'color'),

            //MOST POPULAR
            title_name(context,name: 'Most Popular !'),
            category_grid_box(10,name: 'affirmation'),

            //BROKEN
            title_name(context,name: 'Broken'),
            category_grid_box(10,name: 'broken'),

            //DEEP
            title_name(context,name: 'Deep'),
            category_grid_box(10,name: 'deep'),

            //EGO
            title_name(context,name: 'Ego'),
            category_grid_box(10,name: 'ego'),

            //FRIENDSHIP
            title_name(context,name: 'Friendship'),
            category_grid_box(10,name: 'friendship'),

            //FUNNY
            title_name(context,name: 'Funny'),
            category_grid_box(10,name: 'funny'),

            //HAPPY
            title_name(context,name: 'Happy'),
            category_grid_box(10,name: 'happy'),

            //HOPE
            title_name(context,name: 'Hope'),
            category_grid_box(10,name: 'hope'),

            //KINDENESS
            title_name(context,name: 'Kindness'),
            category_grid_box(10,name: 'kindness'),

            //LOVE
            title_name(context,name: 'Love'),
            category_grid_box(10,name: 'love'),

            //MENTAL HEALTH
            title_name(context,name: 'Mental Health'),
            category_grid_box(10,name: 'mental health'),

            //MOTIVATION
            title_name(context,name: 'Motivation'),
            category_grid_box(10,name: 'motivation'),

            //POSITIVE
            title_name(context,name: 'Positive'),
            category_grid_box(10,name: 'positive'),

            //SAD
            title_name(context,name: 'Sad'),
            category_grid_box(10,name: 'sad'),

            //SUCCESS
            title_name(context,name: 'Success'),
            category_grid_box(10,name: 'success'),
          ],
        ),
      ),
    );
  }
}

