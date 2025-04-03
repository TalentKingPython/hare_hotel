import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../utils/utils.dart';

class CompactDatePicker extends StatefulWidget {
  const CompactDatePicker({super.key});
  @override
  CompactDatePickerState createState() => CompactDatePickerState();
}

class CompactDatePickerState extends State<CompactDatePicker> {
  DateTime? _selectedDate;
  final DateFormat _dateFormat = DateFormat(
    'EEE, MMM d, y',
  ); // 3-letter day & month

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: colorPrimary, // Header background
              onPrimary: Colors.white, // Header text
              onSurface: Colors.black, // Body text
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue, // Button text
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth * 0.2,
      height: deviceHeight * 0.05,
      decoration: BoxDecoration(
        color: colorWhite,
        border: Border.all(color: colorButtonBorder, width: 1),
        borderRadius: BorderRadius.circular(deviceWidth * 0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            child: Image.asset(
              "assets/images/calendar-check.png",
              width: deviceHeight * 0.05,
              height: deviceHeight * 0.05,
            ),
            onTap: () => _selectDate(context),
          ),

          SizedBox(width: 6),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              _selectedDate == null
                  ? 'Select date'
                  : _dateFormat.format(_selectedDate!),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
