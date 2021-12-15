import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetflutter/routes/accueil/accueil.dart';

class Submit extends StatefulWidget {
  const Submit({Key? key}) : super(key: key);

  @override
  State<Submit> createState() => _SubmitState();
}

/// This is the private State class that goes with Submit.
class _SubmitState extends State<Submit> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            maxLength: 11,
            decoration: const InputDecoration(
              hintText: 'Entrez votre ID',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'ID incorrect';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {}
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }

  void _onPressed(int index) {
    setState(() {});
  }
}
