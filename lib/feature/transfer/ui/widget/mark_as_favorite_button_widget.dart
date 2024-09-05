import 'package:celula_2_project/config/themes/extensions/custom_colors.dart';
import 'package:flutter/material.dart';

class MarkAsFavoriteButtonWidget extends StatelessWidget {
  const MarkAsFavoriteButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  gradient: Theme.of(context)
                      .extension<CustomColors>()
                      ?.backgroundCard,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.star, color: Colors.yellow),
              ),
              const SizedBox(width: 16),
              Text(
                "Marca como favorito",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
