import 'package:celula_2_project/config/themes/extensions/custom_colors.dart';
import 'package:flutter/material.dart';

class CardsInfoTransferWidget extends StatelessWidget {
  const CardsInfoTransferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            _cardContainer(
              context,
              Column(children: [
                const SizedBox(height: 30),
                Text('Para Margarita Ortiz',
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 16),
                Divider(
                  color: const Color(0xFFFFFFFF).withOpacity(0.08),
                ),
                _paddingContentCard(
                  context,
                  Column(
                    children: [
                      _fieldRow(context, 'No. de cuenta', '****5764'),
                      _fieldRow(context, 'Banco', 'Santander México'),
                      _fieldRow(context, 'RFC o CURP', 'OIJM870505SW8'),
                    ],
                  ),
                )
              ]),
            ),
            Positioned(
              top: -60,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.swap_horiz,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ),
            ),
            Positioned(
              top: -60,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.swap_horiz,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 16),
        _cardContainer(
          context,
          Column(
            children: [
              _paddingContentCard(
                context,
                Column(
                  children: [
                    _fieldRow(context, 'Desde', 'Cuenta de depósito'),
                    _fieldRow(context, 'No. de cuenta', '****4517'),
                    _fieldRow(context, 'Banco', 'bineo'),
                    _fieldRow(context, 'Fecha', '15 abr 2021, 14:58 hrs'),
                    _fieldRow(context, 'Concepto', 'Boletos de avión'),
                  ],
                ),
              ),
              Divider(
                color: const Color(0xFFFFFFFF).withOpacity(0.08),
              ),
              _paddingContentCard(
                  context,
                  Column(
                    children: [
                      _fieldRow(context, 'Comisión', '\$ 0.00'),
                      _fieldRow(context, 'IVA', '\$ 0.00'),
                    ],
                  )),
              Divider(
                color: const Color(0xFFFFFFFF).withOpacity(0.08),
              ),
              _paddingContentCard(
                context,
                Column(
                  children: [
                    _fieldRow(context, 'Folio', '123456789'),
                    _fieldRow(context, 'Referencia', '867384'),
                    _fieldRow(context, 'Clave de rastreo', '123456789'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _fieldRow(BuildContext context, String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFFFFFFFF).withOpacity(0.64),
                fontWeight: FontWeight.w400,
              ),
        ),
        Text(value, style: Theme.of(context).textTheme.bodyLarge),
      ],
    ),
  );
}

Widget _cardContainer(BuildContext context, Widget child) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 24),
    decoration: BoxDecoration(
      gradient: Theme.of(context).extension<CustomColors>()?.backgroundCard,
      borderRadius: BorderRadius.circular(8),
    ),
    child: child,
  );
}

Widget _paddingContentCard(BuildContext context, Widget child) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    child: child,
  );
}
