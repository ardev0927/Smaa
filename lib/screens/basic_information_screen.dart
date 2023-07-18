import 'package:flutter/material.dart';
import 'package:smaa/widgets/app_field.dart';

import '../config/strings.dart';

class BasicInformationScreen extends StatefulWidget {
  const BasicInformationScreen({super.key});

  @override
  State<BasicInformationScreen> createState() => _BasicInformationScreenState();
}

class _BasicInformationScreenState extends State<BasicInformationScreen> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _myCityController = TextEditingController();
  final _myCountryController = TextEditingController();
  final _aboutMeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text(
          t1BasicInformation,
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        children: [
          AppField(
            controller: _firstNameController,
            hintName: t1FirstName,
          ),
          AppField(
            controller: _lastNameController,
            hintName: t1LastName,
          ),
          AppField(
            controller: _myCityController,
            hintName: t1MyCity,
          ),
          AppField(
            controller: _myCountryController,
            hintName: t1MyCountry,
          ),
          AppField(
            controller: _aboutMeController,
            hintName: t1AboutMe,
            isMaxLine: true,
          ),
        ],
      ),
    );
  }
}
