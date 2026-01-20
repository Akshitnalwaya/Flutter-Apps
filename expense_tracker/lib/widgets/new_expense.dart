import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  var _enterTitle = "";
    void _saveTitileInupt(String inputValue){
      _enterTitle = inputValue;
    }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child:Column(
        children: [
          TextField(
            onChanged: _saveTitileInupt,
            maxLength: 50,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              label: Text(
                "Title"
              )
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () => print(_enterTitle),
                child: const Text("Save expense"),
              ),
            ],
          )
        ],
      ) ,
    );
  }
}
