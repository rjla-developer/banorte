import 'package:celula_2_project/config/themes/extensions/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData primaryTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: const Color(0xFF1B1F22),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1B1F22),
  ),

  textTheme: TextTheme(
    headlineLarge: GoogleFonts.openSans(
      fontWeight: FontWeight.w400,
      fontSize: 32,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.openSans(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: Colors.white,
    ),
    bodyMedium: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
      fontSize: 13,
      color: const Color(0xFFFB36FF),
    ),
    bodySmall: GoogleFonts.openSans(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: const Color(0xFFFFFFFF).withOpacity(0.56),
    ),
  ),

  // Definición de colores con propiedades personalizadas
  extensions: const <ThemeExtension<dynamic>>[
    CustomColors(
      backgroundCard: LinearGradient(
        colors: [
          Color(0xFF2A2D32),
          Color(0xFF23262A),
        ],
      ),
    ),
  ],
);
