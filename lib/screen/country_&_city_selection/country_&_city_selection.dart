

import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class CountryAndCitySelection extends StatefulWidget {
  const CountryAndCitySelection({Key? key}) : super(key: key);

  @override
  State<CountryAndCitySelection> createState() => _CountryAndCitySelectionState();
}

class _CountryAndCitySelectionState extends State<CountryAndCitySelection> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text("Country State City Picker"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: CSCPicker(
          layout: Layout.vertical,
          //flagState: CountryFlag.DISABLE,
          onCountryChanged: (country) {},
          onStateChanged: (state) {},
          onCityChanged: (city) {},
        ),
      ),
    );
  }
}
