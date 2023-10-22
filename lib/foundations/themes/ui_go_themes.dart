import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_go/tokens/colors.dart';

// import '../../ui_go.dart';

// final uiGoLigthTheme = ThemeData(
//     useMaterial3: true,

//     // primaryColor: UiGoColorsFoundation.primaryColor,
//     // primarySwatch: UiGoColorsFoundation.primaryColorMat,
//     // backgroundColor: UiGoColorsFoundation.bgGray,
//     textTheme: const TextTheme(
//         // headline1: TextStyle(
//         //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//         //   fontWeight: FontWeight.w700,
//         //   fontSize: UiGoTypographyFoundation.fontSizeH1,
//         //   color: UiGoColorsFoundation.darkTextColors,
//         // ),
//         // headline2: TextStyle(
//         //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//         //   fontWeight: FontWeight.w900,
//         //   fontSize: UiGoTypographyFoundation.fontSizeH2,
//         //   color: UiGoColorsFoundation.darkTextColors,
//         // ),
//         // headline3: TextStyle(
//         //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//         //   fontWeight: FontWeight.w400,
//         //   fontSize: UiGoTypographyFoundation.fontSizeH3,
//         //   color: UiGoColorsFoundation.darkTextColors,
//         // ),
//         // headline4: TextStyle(
//         //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//         //   fontWeight: FontWeight.w400,
//         //   fontSize: UiGoTypographyFoundation.fontSizeH4,
//         //   color: UiGoColorsFoundation.darkTextColors,
//         // ),
//         // headline5: TextStyle(
//         //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//         //   fontWeight: FontWeight.w400,
//         //   fontSize: UiGoTypographyFoundation.fontSizeH5,
//         //   color: UiGoColorsFoundation.darkTextColors,
//         // ),
//         // headline6: TextStyle(
//         //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//         //   fontWeight: FontWeight.w400,
//         //   fontSize: UiGoTypographyFoundation.fontSizeH6,
//         //   color: UiGoColorsFoundation.darkTextColors,
//         // ),
//         ));

// final uiGoDarkTheme = ThemeData(
//   useMaterial3: true,
//   // primaryColor: UiGoColorsFoundation.primaryColor,
//   // primarySwatch: UiGoColorsFoundation.primaryColorMat,
//   // backgroundColor: UiGoColorsFoundation.bgDark,
//   textTheme: const TextTheme(
//       // headline1: TextStyle(
//       //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//       //   fontWeight: FontWeight.w700,
//       //   fontSize: UiGoTypographyFoundation.fontSizeH1,
//       //   color: UiGoColorsFoundation.ligthTextColors,
//       // ),
//       // headline2: TextStyle(
//       //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//       //   fontWeight: FontWeight.w900,
//       //   fontSize: UiGoTypographyFoundation.fontSizeH2,
//       //   color: UiGoColorsFoundation.ligthTextColors,
//       // ),
//       // headline3: TextStyle(
//       //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//       //   fontWeight: FontWeight.w400,
//       //   fontSize: UiGoTypographyFoundation.fontSizeH3,
//       //   color: UiGoColorsFoundation.ligthTextColors,
//       // ),
//       // headline4: TextStyle(
//       //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//       //   fontWeight: FontWeight.w400,
//       //   fontSize: UiGoTypographyFoundation.fontSizeH4,
//       //   color: UiGoColorsFoundation.darkTextColors,
//       // ),
//       // headline5: TextStyle(
//       //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//       //   fontWeight: FontWeight.w400,
//       //   fontSize: UiGoTypographyFoundation.fontSizeH5,
//       //   color: UiGoColorsFoundation.darkTextColors,
//       // ),
//       // headline6: TextStyle(
//       //   fontFamily: UiGoTypographyFoundation.familyHeadings,
//       //   fontWeight: FontWeight.w400,
//       //   fontSize: UiGoTypographyFoundation.fontSizeH6,
//       //   color: UiGoColorsFoundation.ligthTextColors,
//       // ),
//       ),
// );

ThemeData getTheme(bool darkMode) {
  if (darkMode) {
    final darkTheme = ThemeData.dark();
    final textTheme = darkTheme.textTheme;
    const boldStyle = TextStyle(fontWeight: FontWeight.bold);
    const whiteStyle = TextStyle(color: Colors.black);
    return darkTheme.copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: UiGoColors.bGBlack,
        elevation: 0,
      ),
      textTheme: GoogleFonts.nunitoSansTextTheme(
        textTheme.copyWith(
          titleSmall: textTheme.titleSmall?.merge(boldStyle),
          titleMedium: textTheme.titleMedium?.merge(boldStyle),
          titleLarge: textTheme.titleLarge?.merge(boldStyle),
          bodySmall: textTheme.bodySmall?.merge(whiteStyle),
        ),
      ),
      scaffoldBackgroundColor: UiGoColors.bGBlack,
      canvasColor: UiGoColors.bGBlack,
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(
          Colors.lightBlue.withOpacity(0.5),
        ),
        thumbColor: MaterialStateProperty.all(
          Colors.blue,
        ),
      ),
    );
  }

  final lightTheme = ThemeData.light();
  final textTheme = lightTheme.textTheme;
  const boldStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: UiGoColors.bGBlack,
  );
  const darkStyle = TextStyle(
    color: UiGoColors.bGBlack,
  );

  return lightTheme.copyWith(
    textTheme: GoogleFonts.nunitoSansTextTheme(
      textTheme.copyWith(
        titleSmall: textTheme.titleSmall?.merge(boldStyle),
        titleMedium: textTheme.titleMedium?.merge(boldStyle),
        titleLarge: textTheme.titleLarge?.merge(boldStyle),
        bodySmall: textTheme.bodySmall?.merge(darkStyle),
      ),
    ),
    appBarTheme: const AppBarTheme(
      // backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: UiGoColors.bGBlack,
      ),
      titleTextStyle: TextStyle(
        color: UiGoColors.bGBlack,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: UiGoColors.bGBlack,
    ),
  );
}
