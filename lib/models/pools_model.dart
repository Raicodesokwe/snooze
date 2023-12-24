import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PoolsModel {
  final Widget icon;
  final String number;
  final String label;

  PoolsModel({required this.icon, required this.number, required this.label});
}

List<PoolsModel> poolsList = [
  PoolsModel(
      icon: Icon(
        FontAwesomeIcons.dollarSign,
        size: 17,
      ),
      number: '230k',
      label: 'USD pool'),
  PoolsModel(
      icon: Icon(
        FontAwesomeIcons.ethereum,
        size: 17,
      ),
      number: '1.4k',
      label: 'ETH pool'),
  PoolsModel(
      icon: Icon(
        FontAwesomeIcons.dollarSign,
        size: 17,
      ),
      number: '230k',
      label: 'USDC pool'),
  PoolsModel(
      icon: Icon(
        FontAwesomeIcons.bitcoinSign,
        size: 17,
      ),
      number: '0.1',
      label: 'BTC pool'),
];
