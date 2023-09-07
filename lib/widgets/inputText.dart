import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  const InputText({super.key});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  String value = '';

  void submit(String val) {
    setState(() {
      value = 'Bienvenue $val';
    });
  }

  void change(String val) {
    setState(() {
      value = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(value, style: const TextStyle(fontSize: 20, color: Colors.black)),
        TextField(
          decoration: const InputDecoration(
            labelText: "Nom",
            hintText: "Votre Nom",
            icon: Icon(
              Icons.person,
              color: Colors.blue,
              size: 25,
            ),
          ),
          keyboardType: TextInputType.text,
          onChanged: change,
          onSubmitted: submit,
          autofocus: true,
          autocorrect: true,
        ),
        const TextField(
            decoration: InputDecoration(
              labelText: "Phone",
              hintText: "Entre votre numéro de téléphone",
              icon: Icon(
                Icons.phone,
                color: Colors.blue,
              ),
            ),
            keyboardType: TextInputType.number),
        const TextField(
          decoration: InputDecoration(
              labelText: "Password",
              hintText: 'Enter your password',
              icon: Icon(
                Icons.lock,
                color: Colors.blue,
              )),
          keyboardType: TextInputType.text,
          obscureText: true,
        )
      ],
    );
  }
}
