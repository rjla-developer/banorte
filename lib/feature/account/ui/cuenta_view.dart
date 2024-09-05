import 'package:celula_2_project/config/themes/extensions/custom_colors.dart';
import 'package:celula_2_project/core/ui/icon_container.dart';
import 'package:celula_2_project/feature/account/ui/ejemplo_borrar.dart';
import 'package:celula_2_project/feature/account/ui/sliver_header.dart';
import 'package:celula_2_project/feature/transfer/ui/screens/transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CuentaView extends StatelessWidget {
  const CuentaView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MovimientosCuenta> movimientosList = [
      MovimientosCuenta(mes: 'Abril', movimientos: [
        Movimiento(
            tipo: "Gasto",
            fecha: "15 abr 2021",
            hora: "14:58",
            cantidad: "13000",
            estatus: "En proceso",
            tipoMovimiento: "Tranferencia",
            descripcion: "Para Margarita Ortiz"),
        Movimiento(
            tipo: "Gasto",
            fecha: "13 abr 2021",
            hora: "14:58",
            cantidad: "100",
            estatus: "Completado",
            tipoMovimiento: "Servicio",
            descripcion: "Telcel"),
        Movimiento(
            tipo: "Gasto",
            fecha: "13 abr 2021",
            hora: "14:58",
            cantidad: "100",
            estatus: "Completado",
            tipoMovimiento: "Apartado",
            descripcion: 'Para pocket "Cuba"'),
      ]),
      MovimientosCuenta(mes: 'Marzo', movimientos: [
        Movimiento(
            tipo: "Ingreso",
            fecha: "15 mar 2021",
            hora: "14:58",
            cantidad: "385",
            estatus: "Completado",
            tipoMovimiento: "Tranferencia",
            descripcion: 'Desde pocket "Cuba"'),
        Movimiento(
            tipo: "Gasto",
            fecha: "13 mar 2021",
            hora: "14:58",
            cantidad: "100",
            estatus: "Completado",
            tipoMovimiento: "Servicio",
            descripcion: 'PlayStation shop'),
        Movimiento(
            tipo: "Gasto",
            fecha: "13 mar 2021",
            hora: "14:58",
            cantidad: "100",
            estatus: "Completado",
            tipoMovimiento: "Apartado",
            descripcion: 'Retiro ATM BBVA'),
        Movimiento(
            tipo: "Gasto",
            fecha: "13 mar 2021",
            hora: "14:58",
            cantidad: "100",
            estatus: "Completado",
            tipoMovimiento: "Apartado",
            descripcion: 'Prestámo personal'),
      ]),
      MovimientosCuenta(mes: 'Febrero', movimientos: [
        Movimiento(
            tipo: "Ingreso",
            fecha: "15 feb 2021",
            hora: "14:58",
            cantidad: "13000",
            estatus: "Completado",
            tipoMovimiento: "Apartado",
            descripcion: 'Prestámo personal'),
        Movimiento(
            tipo: "Ingreso",
            fecha: "13 feb 2021",
            hora: "14:58",
            cantidad: "100",
            estatus: "Completado",
            tipoMovimiento: "Apartado",
            descripcion: 'Prestámo personal'),
        Movimiento(
            tipo: "Ingreso",
            fecha: "13 feb 2021",
            hora: "14:58",
            cantidad: "100",
            estatus: "Completado",
            tipoMovimiento: "Apartado",
            descripcion: 'Prestámo personal'),
      ]),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded),
        actions: const [
          Icon(Icons.remove_red_eye_outlined),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: SliverAppBarDelegate(
              minHeight: 300,
              maxHeight: 300,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _CuentaInfo(
                    cuenta: '5764',
                    saldo: '32.890.00',
                  ),
                  _Secciones(),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              margin: const EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient:
                    Theme.of(context).extension<CustomColors>()?.backgroundCard,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons
                          .magnifyingGlass), // Icono a la izquierda
                      suffixIcon: Icon(FontAwesomeIcons.sliders),
                    ),
                  ),
                  _ListaMovimientos(movimientosList: movimientosList),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ListaMovimientos extends StatelessWidget {
  const _ListaMovimientos({
    required this.movimientosList,
  });

  final List<MovimientosCuenta> movimientosList;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: movimientosList.length,
      itemBuilder: (context, i) {
        final movimientosMes = movimientosList[i];
        return _MovimientosMes(
            movimientosMes: movimientosMes, textStyle: textStyle);
      },
    );
  }
}

class _MovimientosMes extends StatelessWidget {
  const _MovimientosMes({
    required this.movimientosMes,
    required this.textStyle,
  });

  final MovimientosCuenta movimientosMes;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movimientosMes.mes,
            style: const TextStyle(color: Colors.white),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: movimientosMes.movimientos.length,
            itemBuilder: (context, i) {
              final movimiento = movimientosMes.movimientos[i];
              return _ItemMovimiento(
                  movimiento: movimiento, textStyle: textStyle);
            },
          ),
        ],
      ),
    );
  }
}

class _ItemMovimiento extends StatelessWidget {
  const _ItemMovimiento({
    required this.movimiento,
    required this.textStyle,
  });

  final Movimiento movimiento;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    final tipo = movimiento.tipo == 'Gasto' ? '-' : '+';
    final Widget cantidad = movimiento.tipo == 'Gasto'
        ? Text(
            '$tipo ${movimiento.cantidad}',
            style: textStyle.bodyLarge,
          )
        : Text('$tipo ${movimiento.cantidad}',
            style: const TextStyle(color: Colors.green));

    final Widget estatus = movimiento.estatus == 'Completado'
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$tipo ${movimiento.cantidad}',
                style: textStyle.bodyLarge,
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              cantidad,
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.clock,
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(movimiento.estatus)
                ],
              ),
            ],
          );

    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TransferScreen(),
          ),
        );
      },
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const IconContainer(
                    size: 40,
                    iconSize: 25,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(movimiento.descripcion, style: textStyle.bodyLarge),
                      Text(
                        "${movimiento.fecha}, ${movimiento.hora} hrs",
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              estatus
            ],
          )),
    );
  }
}

class _Secciones extends StatelessWidget {
  const _Secciones();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _BotonSeccion(
            icono: FontAwesomeIcons.fileLines,
            titulo: 'Estados de cuenta',
          ),
          _BotonSeccion(
            icono: FontAwesomeIcons.clipboardList,
            titulo: 'Detalles',
          ),
          _BotonSeccion(
            icono: FontAwesomeIcons.gear,
            titulo: 'Configurar',
          ),
        ],
      ),
    );
  }
}

class _BotonSeccion extends StatelessWidget {
  final IconData icono;
  final String titulo;

  const _BotonSeccion({required this.icono, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118,
      height: 95,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFFA00FF).withOpacity(0.60),
            const Color(0xFFFF8200).withOpacity(0.0),
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF3B3B3C),
          borderRadius: BorderRadius.circular(6),
        ),
        child: TextButton(
          onPressed: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icono,
                size: 25,
                color: Colors.white,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                titulo,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFFFFFFFF).withOpacity(0.64),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CuentaInfo extends StatelessWidget {
  final String cuenta;
  final String saldo;
  const _CuentaInfo({required this.cuenta, required this.saldo});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Cuenta de ahorro', style: textStyle.headlineMedium),
          Text(
            'Saldo disponible en ****$cuenta',
            style: textStyle.bodySmall,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            saldo,
            style: textStyle.headlineLarge,
          )
        ],
      ),
    );
  }
}
