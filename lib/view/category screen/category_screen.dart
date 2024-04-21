import 'package:flutter/material.dart';
import 'package:quotify/utils/global%20list/categories_list.dart';
import '../../utils/global_variables.dart';
import 'components/grid_view_container.dart';
import 'components/mix_categories_button.dart';
import 'components/screen_tittle_row.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CATEGORIES TITLE AND SEARCH ICON
            screenTitleAndSearchIcon(context),

            //MIX CATEGORIES BUTTON
            mixCategoryButton(context),

            //GENERAL CATEGORIES LIST
            gridForCategories(list: generalListOfCategory),

            //FOR YOU GRID VIEW
            addFieldWithGridView(context: context, title: '   For You', list: forYouList),

            //MOST POPULAR VIEW
            addFieldWithGridView(context: context, title: '   Most Popular', list: mostPopularList),

            //PERSONAL GROWTH GRID VIEW
            addFieldWithGridView(context: context, title: '   Personal-Growth', list: personalGrowthList),

            //HARD TIME GRID VIEW
            addFieldWithGridView(context: context, title: '   Hard-Times', list: hardTimeList),

            //CALM DOWN GRID VIEW
            addFieldWithGridView(context: context, title: '   Calm Down', list: calmDownList),


          ],
        ),
      ),
    );
  }




}


