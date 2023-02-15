import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //
        body: Center(
          // Text is pre-defined widget in Flutter that displays the text i.e String on the screen
          // first parameter is string which the positional parameter
          // & all remaining parameters are optional named parameters
          child: Text(
            // string i.e data to be shown on the screen
            'Flutter Teacher',

            // textScaleFactor specify magnified version of text
            textScaleFactor: 2,

            // alignment of text, managed using enum called TextAlign
            textAlign: TextAlign.center,

            // determines the direction in which text has to be presented
            textDirection: TextDirection.ltr,

            // maximum number of line in which text will be displayed
            maxLines: 2,

            // the way in which overflow of text is presented
            // It is managed using enum called TextOverflow
            // options are ellipsis, clip, fade & visible
            overflow: TextOverflow.ellipsis,

            // whether text should break at soft line breaks
            softWrap: false,

            // apply the style to text using TextStyle object
            style: TextStyle(
              // apply the font for text
              fontFamily: 'Arial',

              // size of font
              fontSize: 40,

              // applies foreground color to text
              color: Colors.red,

              // applies backgroundColor color to text
              backgroundColor: Colors.green,

              // manage thickness of text using FontWeight object
              fontWeight: FontWeight.bold,

              // spacing/gap among the letters in text
              letterSpacing: 5,

              // spacing/gap among the words in text
              wordSpacing: 10,

              // applies style like italic
              fontStyle: FontStyle.italic,

              // applies decoration to text using object called TextDecoration
              // options are underline, overline, lineThrough
              decoration: TextDecoration.lineThrough,

              // determines the color of decoration
              decorationColor: Colors.grey,

              // determines the thickness of decoration
              decorationThickness: 5,

              // determines style of decoration using enum callled TextDecorationStyle
              // options are wavy, double, dashed, dotted
              decorationStyle: TextDecorationStyle.dotted,

              // the way in which overflow of text is presented
              // It is managed using enum called TextOverflow
              // options are ellipsis, clip, fade & visible
              overflow: TextOverflow.ellipsis,

              // shows the multiple shadows to the text
              shadows: const [
                Shadow(
                  color: Colors.red,
                  offset: Offset(20, 10), // 20 is dx & 10 is dy
                  blurRadius: 5,
                )
              ],

              // manage foreground of text using Paint object
              // we can either use foreground or color
              foreground: Paint()
                ..color = Colors.blue
                ..strokeWidth = 2
                ..style = PaintingStyle.stroke,

              // manage background of text using Paint object
              // we can background use backgroundColor or color
              background: Paint()
                ..color = Colors.blue
                ..strokeWidth = 2
                ..style = PaintingStyle.stroke,
            ),
          ),
        ),
      ),
    );
  }
}
