import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.model.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:expense_tracker/data/database_helper.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  List<Expense> _registeredExpenses = [];

  @override
  void initState() {
    super.initState();
    _loadExpenses();
  }

  void _loadExpenses() async {
    final expenses = await DatabaseHelper.instance.queryAllRows();
    setState(() {
      _registeredExpenses = expenses;
    });
  }

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => NewExpense(onAddExpens: _addExpense),
    );
  }

  void _addExpense(Expense expense) async {
    await DatabaseHelper.instance.insert(expense);
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void removeExpens(Expense expense) async {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    await DatabaseHelper.instance.delete(expense.id);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    if (!mounted) return;
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: const Text("Expense Deleted "),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () async {
            await DatabaseHelper.instance.insert(expense);
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text("No data Found Add something ..."),
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: _registeredExpenses,
        onRemoveExpense: removeExpens,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker"),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          const Text("The chart"),
          Expanded(child: mainContent),
        ],
      ),
    );
  }
}
