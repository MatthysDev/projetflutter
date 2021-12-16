import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:projetflutter/providers/app.state.provider.dart';


class Submit extends StatefulWidget {
  const Submit({Key? key}) : super(key: key);

  @override
  State<Submit> createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {

    final myController = TextEditingController();

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: myController,
          
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
            child: Consumer(
              builder: (context, ref, widget){
                return ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  ref.read(appStateProvider.notifier).setPlayerId(myController.text);
                },
                child: const Text('Submit'),
              );
              },
              
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
