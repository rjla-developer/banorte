// To parse this JSON data, do
//
//     final movimientosCuenta = movimientosCuentaFromJson(jsonString);

import 'dart:convert';

List<MovimientosCuenta> movimientosCuentaFromJson(String str) => List<MovimientosCuenta>.from(json.decode(str).map((x) => MovimientosCuenta.fromJson(x)));

String movimientosCuentaToJson(List<MovimientosCuenta> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MovimientosCuenta {
    String mes;
    List<Movimiento> movimientos;

    MovimientosCuenta({
        required this.mes,
        required this.movimientos,
    });

    factory MovimientosCuenta.fromJson(Map<String, dynamic> json) => MovimientosCuenta(
        mes: json["mes"],
        movimientos: List<Movimiento>.from(json["movimientos"].map((x) => Movimiento.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "mes": mes,
        "movimientos": List<dynamic>.from(movimientos.map((x) => x.toJson())),
    };
}

class Movimiento {
    String tipo;
    String fecha;
    String hora;
    String cantidad;
    String estatus;
    String tipoMovimiento;
    String descripcion;

    Movimiento({
        required this.tipo,
        required this.fecha,
        required this.hora,
        required this.cantidad,
        required this.estatus,
        required this.tipoMovimiento,
        required this.descripcion,
    });

    factory Movimiento.fromJson(Map<String, dynamic> json) => Movimiento(
        tipo: json["tipo"],
        fecha: json["fecha"],
        hora: json["hora"],
        cantidad: json["cantidad"],
        estatus: json["estatus"],
        tipoMovimiento: json["tipo_movimiento"],
        descripcion: json["descripcion"],
    );

    Map<String, dynamic> toJson() => {
        "tipo": tipo,
        "fecha": fecha,
        "hora": hora,
        "cantidad": cantidad,
        "estatus": estatus,
        "tipo_movimiento": tipoMovimiento,
        "descripcion": descripcion,
    };
}
