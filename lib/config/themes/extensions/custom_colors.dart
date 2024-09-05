import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.backgroundCard,
  });

  final LinearGradient? backgroundCard;

  @override
  CustomColors copyWith({
    LinearGradient? backgroundCard,
  }) {
    return CustomColors(
      backgroundCard: backgroundCard ?? this.backgroundCard,
    );
  }

  @override
  CustomColors lerp(CustomColors? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      backgroundCard:
          LinearGradient.lerp(backgroundCard, other.backgroundCard, t),
    );
  }
}
