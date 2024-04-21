import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:outlined_text/outlined_text.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_extend/share_extend.dart';
import 'dart:ui' as ui;
import '../utils/global_variables.dart';
import '../utils/models/user_model.dart';

File? fileImg;

class ShareScreen extends StatelessWidget {
  const ShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    userProvider = Provider.of<UserProvider>(context, listen: true);
    return Scaffold(
      body: Stack(
        children: [
          RepaintBoundary(
            key: userProvider!.imgKey,
            child: Container(
              height: height,
              width: width,
              decoration: userProvider!
                      .globalQuoteList![userProvider!.pageViewIndex].isImage
                  ? BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(userProvider!
                            .globalQuoteList![userProvider!.pageViewIndex].image!),
                      ),
                    )
                  : BoxDecoration(
                      color: userProvider!
                          .globalQuoteList![userProvider!.pageViewIndex].color),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedText(
                      text: Text(
                        textAlign: userProvider!.textThemeModel.quoteTextAlign,
                        userProvider!
                            .globalQuoteList![userProvider!.pageViewIndex].quote!,
                        style: GoogleFonts.getFont(
                          userProvider!.textThemeModel.fontFamily,
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  fontSize: 30,
                                  color: userProvider!.textThemeModel.fontColor),
                        ),
                      ),
                      strokes: [
                        OutlinedTextStroke(color: Colors.black, width: 2),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment:
                            userProvider!.textThemeModel.authorTextAlign,
                        children: [
                          OutlinedText(
                            text: Text(
                              '${userProvider!.globalQuoteList![userProvider!.pageViewIndex].author! == '' ? '' : '-'} ${userProvider!.globalQuoteList![userProvider!.pageViewIndex].author!} ( ${userProvider!.globalQuoteList![userProvider!.pageViewIndex].category!} )',
                              style: GoogleFonts.getFont(
                                userProvider!.textThemeModel.fontFamily,
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontSize: 16,
                                      color: userProvider!.textThemeModel.fontColor,
                                    ),
                              ),
                            ),
                            strokes: [
                              OutlinedTextStroke(color: Colors.black, width: 2),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 14),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: DecoratedIcon(
                icon: Icon(
                  Icons.clear,
                  size: 40,
                  color: Colors.white,
                ),
                decoration: IconDecoration(
                    border: IconBorder(color: Colors.black, width: 1.5)),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () async {
                        final boudary =
                        userProvider!.imgKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

                        ui.Image image = await boudary.toImage();

                        ByteData? byteData =
                            await image.toByteData(format: ui.ImageByteFormat.png);

                        final imgData = byteData!.buffer.asUint8List();

                        ImageGallerySaver.saveImage(imgData);

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            duration: Duration(seconds: 1),
                            content: Text('Saved!')));
                      },
                      child: DecoratedIcon(
                        icon: Icon(
                          Icons.save_alt,
                          size: 40,
                          color: Colors.white,
                        ),
                        decoration: IconDecoration(
                            border: IconBorder(
                                color: Colors.black, width: 1.5)),
                      ),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () async {
                        final boudary =
                        userProvider!.imgKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

                        ui.Image image = await boudary.toImage();

                        ByteData? byteData =
                            await image.toByteData(format: ui.ImageByteFormat.png);

                        final imgData = byteData!.buffer.asUint8List();

                        final directory = await getApplicationDocumentsDirectory();

                        fileImg = File(
                            "${directory.path}/flutter/${DateTime.now().millisecondsSinceEpoch}.png");
                        fileImg!.createSync(recursive: true);

                        fileImg!.writeAsBytesSync(imgData);

                        await ShareExtend.share(fileImg!.path, 'Quotes');
                      },
                      child: DecoratedIcon(
                        icon: const Icon(
                          CupertinoIcons.share,
                          color: Colors.white,
                          size: 40,
                        ),
                        decoration: IconDecoration(
                            border: IconBorder(
                                color: Colors.black, width: 1.5)),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

