import 'package:flutter/material.dart';

abstract class ConstantsUtil {
  static const double DEFAULT_PADDING = 20.0;
  static const String APP_NAME = "BarberClock";
  //static const String API_BASE_URL = "https://api.meuapp.com";

  //Paleta de cores
  static const Laranja = Color.fromRGBO(246, 161, 27, 1);
  static const CinzaEscuro = Color.fromRGBO(35, 35, 35, 1);
  static const CinzaMedio = Color.fromRGBO(53, 53, 53, 1);
  static const CinzaClaro = Color.fromRGBO(100, 100, 100, 1);
  static const Branco = Color.fromRGBO(243, 233, 223, 1.0);

  static const BordaGeral = EdgeInsets.all(30);
  static const BordaTop = EdgeInsets.only(top: 10);

  static const gradientLinear = LinearGradient(
    colors: [
      CinzaEscuro,
      CinzaMedio,
      CinzaEscuro,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const gradientRadial = RadialGradient(
    colors: [
      CinzaMedio,
      CinzaEscuro,
    ],
    center: Alignment.center,
    radius: 1.3,
  );
}