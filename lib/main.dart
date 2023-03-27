import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(const ActionButton());

class ActionButton extends StatefulWidget {
  const ActionButton({super.key});

  @override
  DateSelectionState createState() => DateSelectionState();
}

class DateSelectionState extends State<ActionButton> {
  final DateRangePickerController _controller = DateRangePickerController();
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        selectedDate = _controller.selectedDate;
                      },
                      child: const Text("Confirm"),
                    ),
                    TextButton(
                      onPressed: () {
                        _controller.selectedDate = selectedDate;
                      },
                      child: const Text("Cancel"),
                    ),
                  ],
                ),
                Expanded(
                  child: SfDateRangePicker(
                    view: DateRangePickerView.month,
                    selectionMode: DateRangePickerSelectionMode.single,
                    controller: _controller,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}