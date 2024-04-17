// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:quotify/utils/theme/dark_theme.dart';
//
// import '../../utils/global_variables.dart';
//
// class CategoryScreen extends StatefulWidget {
//   const CategoryScreen({super.key});
//
//   @override
//   State<CategoryScreen> createState() => _CategoryScreenState();
// }
//
// class _CategoryScreenState extends State<CategoryScreen> {
//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.primary,
//       body: Column(
//         children: [
//           Container(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 60 , left: 10),
//               child: Row(
//                 children: [
//                   Icon(CupertinoIcons.clear , size: 30,),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: Text('Categories', style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 30 , fontWeight: FontWeight.w600)),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 195),
//                     child: Icon(CupertinoIcons.search , size: 35,),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
//             child: Container(
//               height: height! / 16,
//               width: width! / 0.8,
//               decoration: BoxDecoration(
//                 color: Theme.of(context).colorScheme.secondary,
//                 borderRadius: BorderRadius.circular(15)
//               ),
//               child: Center(child: Text("Mix Categories" , style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 25),)),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 20 , right: 260),
//             child: Text('For You' , style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 27 , fontWeight: FontWeight.w500),),
//           ),
//           ...List.generate(length, (index) => null)
//         ],
//       ),
//     );
//   }
//
//   Padding buildbox(BuildContext context) {
//     return Padding(
//           padding: const EdgeInsets.only(top: 20 , right: 200),
//           child: Container(
//             height: height! / 10,
//             width: width! / 2.5,
//             decoration: BoxDecoration(
//               color: Theme.of(context).colorScheme.surface,
//               borderRadius: BorderRadius.circular(15)
//             ),
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10 , bottom: 50),
//                   child: Text('Motivation' , style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 40 , left: 15),
//                   child: Icon(CupertinoIcons.quote_bubble , size: 35,),
//                 )
//               ],
//             ),
//           ),
//         );
//   }
// }
