import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final double size;
  final double iconSize;
  const IconContainer({
    required this.size,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    const iconos = {
      "pago": Icons.compare_arrows_rounded,
      "transferencia": Icons.arrow_back_rounded,
      "servicio": Icons.ac_unit
    };


    const movimientos = [{
      "tipo": "pago",
      "Cantidad": 100
    },
    {
      "tipo": "servicio",
      "Cantidad": 100
    },
    {
      "tipo": "transferencia",
      "Cantidad": 100
    }];

    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: const Color(0xFF3B3B3C),
        borderRadius:BorderRadius.circular(50)
      ),
      child: Icon(
        iconos[movimientos[0]["tipo"]],
        color: Colors.white,
        size: iconSize,
      ),
    );
  }
}