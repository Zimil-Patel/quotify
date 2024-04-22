import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';

import '../../../utils/global list/wallpaper_list.dart';
import '../../../utils/global_variables.dart';
import '../share_screen.dart';

Future<dynamic> wallpaper(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => SizedBox(
      height: height! / 4.5,
      width: width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 5, left: 20),
              child: Text('Wallpaper',style:  Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 20, color: Theme.of(context).colorScheme.secondary),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(),
            ),
            Column(
              children: List.generate(
                wallpaperlist.length,
                    (index) => CupertinoButton(
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary),
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    child: Text(wallpaperlist[index],style: Theme.of(context).textTheme.titleMedium,),
                  ),
                  onPressed: () async {
                    final boudary = userProvider!.imgKey.currentContext!
                        .findRenderObject() as RenderRepaintBoundary;
            
                    ui.Image image = await boudary.toImage();
            
                    ByteData? byteData =
                    await image.toByteData(format: ui.ImageByteFormat.png);
            
                    final imgData = byteData!.buffer.asUint8List();
            
                    final directory = await getApplicationDocumentsDirectory();
            
                    fileImg = File(
                        "${directory.path}/flutter/${DateTime.now().millisecondsSinceEpoch}.png");
                    fileImg!.createSync(recursive: true);
            
                    fileImg!.writeAsBytesSync(imgData);
            
                    if (index == 0) {
                      lockscreen(context);
                    } else if (index == 1) {
                      homescreen(context);
                    } else if (index == 2) {
                      bothscreen(context);
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
Future<void> lockscreen(BuildContext context) async {
  if (fileImg == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("No image available for setting wallpaper")),
    );
    return;
  }

  try {
    await AsyncWallpaper.setWallpaperFromFile(
      filePath: fileImg!.path,
      wallpaperLocation: AsyncWallpaper.LOCK_SCREEN,
      goToHome: bool.fromEnvironment('save', defaultValue: false),
      toastDetails: ToastDetails.success(),
      errorToastDetails: ToastDetails.error(),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Error setting wallpaper: ${e.toString()}")),
    );
  }
}

Future<void> homescreen(BuildContext context) async {
  if (fileImg == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("No image available for setting wallpaper")),
    );
    return;
  }

  try {
    await AsyncWallpaper.setWallpaperFromFile(
      filePath: fileImg!.path,
      wallpaperLocation: AsyncWallpaper.HOME_SCREEN,
      goToHome: bool.fromEnvironment('save', defaultValue: false),
      toastDetails: ToastDetails.success(),
      errorToastDetails: ToastDetails.error(),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Error setting wallpaper: ${e.toString()}")),
    );
  }
}

Future<void> bothscreen(BuildContext context) async {
  if (fileImg == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("No image available for setting wallpaper")),
    );
    return;
  }

  try {
    await AsyncWallpaper.setWallpaperFromFile(
      filePath: fileImg!.path,
      wallpaperLocation: AsyncWallpaper.BOTH_SCREENS,
      goToHome: bool.fromEnvironment('save', defaultValue: false),
      toastDetails: ToastDetails.success(),
      errorToastDetails: ToastDetails.error(),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Error setting wallpaper: ${e.toString()}")),
    );
  }
}