import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMEd();

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();

  final _amountController = TextEditingController();

  DateTime? _selectedDate;
  final _todayDate = DateTime.now();
  final fDate = DateTime(2000, 12, 30);
  final lDate = DateTime(2050, 1, 30);
  void _presentDatePicker() async {
    final pickedDate = await showDatePicker(context: context, firstDate: fDate, lastDate: lDate);
    print(pickedDate);
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            // onChanged: _saveTitileInupt,
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(label: Text("Title")),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(label: Text("Amount"), prefixText: "₹ "),
                ),
              ),
              SizedBox(width: 13),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(_selectedDate == null ?formatter.format(_todayDate) : formatter.format(_selectedDate!)),
                    IconButton(onPressed: _presentDatePicker, icon: const Icon(Icons.calendar_month_sharp)),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: const Text("Save expense"),
              ),
            ],
          ),

          // Row(
          //   children: [ElevatedButton(onPressed: ()=> print(_amountController.text), child: Text("save amount"))],
          // ),
        ],
      ),
    );
  }
}
