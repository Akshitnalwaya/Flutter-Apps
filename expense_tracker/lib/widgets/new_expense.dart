import 'dart:async';

import 'package:expense_tracker/models/expense.model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMEd();

class NewExpense extends StatefulWidget {
  const NewExpense({super.key, required this.onAddExpens});
  final void Function(Expense expens) onAddExpens;
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
    final pickedDate = await showDatePicker(
      context: context,
      firstDate: fDate,
      lastDate: lDate,
    );
    print(pickedDate);
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  Category _selectedCategory = Category.lesiure;
  void _submitExpenseData() {
    final enteredAmount = double.tryParse(_amountController.text);
    final amountIsValid = enteredAmount == null || enteredAmount <= 0;
    if (_titleController.text.trim().isEmpty ||
        amountIsValid ||
        _selectedDate == null) {
      // error messages
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text("Alert !!!"),
          content: Text("Fields are not updated to the requiments "),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: const Text("Thank ypu"),
            ),
          ],
        ),
      );
      return;
    }
    widget.onAddExpens(Expense(title: _titleController.text, amountl: enteredAmount, date: (_selectedDate!), category: _selectedCategory));
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
                  decoration: InputDecoration(
                    label: Text("Amount"),
                    prefixText: "₹ ",
                  ),
                ),
              ),
              SizedBox(width: 13),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _selectedDate == null
                          ? formatter.format(_todayDate)
                          : formatter.format(_selectedDate!),
                    ),
                    IconButton(
                      onPressed: _presentDatePicker,
                      icon: const Icon(Icons.calendar_month_sharp),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              DropdownButton(
                value: _selectedCategory,
                items: Category.values
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name.toUpperCase()),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  setState(() {
                    _selectedCategory = value;
                  });
                },
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  _submitExpenseData();
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
