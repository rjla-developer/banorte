import 'package:celula_2_project/feature/transfer/ui/widget/cards_info_transfer_widget.dart';
import 'package:celula_2_project/feature/transfer/ui/widget/mark_as_favorite_button_widget.dart';
import 'package:celula_2_project/feature/transfer/ui/widget/status_transfer_widget.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTransferWidget(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StatusTransferWidget(),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  '- \$ 13,000.00',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              const SizedBox(height: 24),
              const CardsInfoTransferWidget(),
              const SizedBox(height: 24),
              InkWell(
                onTap: () {},
                child: Text(
                  'Consulta el comprobante CEP aquí',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: 24),
              Divider(
                color: const Color(0xFFFFFFFF).withOpacity(0.08),
              ),
              const MarkAsFavoriteButtonWidget(),
              Divider(
                color: const Color(0xFFFFFFFF).withOpacity(0.08),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBarTransferWidget(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Center(
        child: Text('Transferencia',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.share, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}
