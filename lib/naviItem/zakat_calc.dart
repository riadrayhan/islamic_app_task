import 'package:flutter/material.dart';


class ZakatCalculator extends StatefulWidget {
  @override
  _ZakatCalculatorState createState() => _ZakatCalculatorState();
}

class _ZakatCalculatorState extends State<ZakatCalculator> {
  final _formKey = GlobalKey<FormState>();
  double _totalAssets = 0.0;
  double _zakatAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zakat Calculator'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.calculate,color: Colors.white,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Total Assets',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your total assets';
                  }
                  return null;
                },
                onSaved: (value) {
                  _totalAssets = double.parse(value!);
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    setState(() {
                      _zakatAmount = (_totalAssets * 2.5) / 100;
                    });
                  }
                },
                child: Text('Calculate Zakat'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Zakat Amount: \$${_zakatAmount.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}