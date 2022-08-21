import 'package:flutter/material.dart';
import '../game.dart';

class GamePage extends StatefulWidget {
  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final _controller = TextEditingController();
  final _game = Game();
  var _feedbackText = ' ';
  var _showTestButton = false;
  //var fc = " ";
  @override
  void CF() {
    _showTestButton = ! _showTestButton;
    print('Botton clicked');
    //print(_controller.text);
    var guess = double.tryParse(_controller.text);
    if (guess == null) {
      print('Error');
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = 'Please enter a value to convert';
      });
    } else {
      var result = _game.CelsiustoFahrenheit(guess);
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = '$guess Celsius = $result Fahrenheit';
      });
    }
  }
  void FC() {
    _showTestButton = ! _showTestButton;
    print('Botton clicked');
    print(_controller.text);
    var guess = double.tryParse(_controller.text);
    if (guess == null) {
      print('Error');
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = 'Please enter a value to convert';
      });
    } else {
      var result = _game.FC(guess);
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = '$guess Fahrenheit = $result Celsius';
      });
    }
  }
  void KC() {
    _showTestButton = ! _showTestButton;
    print('Botton clicked');
    print(_controller.text);
    var guess = double.tryParse(_controller.text);
    if (guess == null) {
      print('Error');
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = 'Please enter a value to convert';
      });
    } else {
      var result = _game.KC(guess);
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = '$guess Kelvin = $result Celsius';
      });
    }
  }
  void CK() {
    _showTestButton = ! _showTestButton;
    print('Botton clicked');
    print(_controller.text);
    var guess = double.tryParse(_controller.text);
    if (guess == null) {
      print('Error');
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = 'Please enter a value to convert';
      });
    } else {
      var result = _game.CK(guess);
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = '$guess Celsius = $result Kelvin';
      });
    }
  }
  void FK() {
    _showTestButton = ! _showTestButton;
    print('Botton clicked');
    print(_controller.text);
    var guess = double.tryParse(_controller.text);
    if (guess == null) {
      print('Error');
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = 'Please enter a value to convert.';

      });
    } else {
      var result = _game.FK(guess);
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = '$guess Fahrenheit = $result Kelvin';
      });
    }
  }
  void KF() {
    _showTestButton = ! _showTestButton;
    print('Botton clicked');
    print(_controller.text);
    var guess = double.tryParse(_controller.text);
    if (guess == null) {
      print('Error');
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = 'Please enter a value to convert';
      });
    } else {
      var result = _game.KF(guess);
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = '$guess Kelvin = $result Fahrenheit';
      });
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      /// ******ใช่บ่อยยยมากก
      appBar: AppBar(
        title: const Text('Midterm Exam'),
      ),
      /// แถบด้านบน
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text('Please enter number between 1 and 100'),
            Text("Temperature Converter" , style: TextStyle(fontSize: 40),),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature value to convert',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: new ButtonBar(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: CF,
                      child: Text("Celsius to Fahrenheit"),
                    ),
                    ElevatedButton(
                      onPressed: CK,
                      child: Text("Celsius to Kelvin"),
                    ),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: FC,
                    child: Text("Fahrenheit to Celsius"),
                  ),
                  ElevatedButton(
                    onPressed: FK,
                    child: Text("Fahrenheit to Kelvin"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: KC,
                    child: Text("Kelvin to Celsius"),
                  ),
                  ElevatedButton(
                    onPressed: KF,
                    child: Text("Kelvin to Fahrenheit"),
                  ),
                ],
              ),
            ),
            Text(_feedbackText),
          ],
        ),
      ),
    );

    /// ขึ้นโครงร่าง
  }
}
/*
decoration: BoxDecoration(
            //border: Border.all(color: Colors.black,width: 5.0), /// width ความกว้าง
            //shape: BoxShape.circle,
          ), /// แต่ง่ความสวยหน้าตา
 */
/*
void FC() {
    _showTestButton = ! _showTestButton;
    print('Botton clicked');
    print(_controller.text);
    var guess = int.tryParse(_controller.text);
    if (guess == null) {
      print('Error');
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = 'Input Error Please try again';
      });
    } else {
      var result = _game.FC(guess);
      setState(() {
        // เก็บค่าของ UI เอาไว้
        _feedbackText = '$guess Fahrenheit = $result Celsius';
      });
    }
  }
 */
/*
 child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //height: 100.0, /// ขยายความสูง
            /*
              decoration: BoxDecoration(
              //border: Border.all(color: Colors.black,width: 5.0), /// width ความกว้าง
              //shape: BoxShape.circle,
            ), /// แต่ง่ความสวยหน้าตา
            */
            children: [
              //Text('Please enter number between 1 and 100'),
              Text("Temperature Converter"),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Please enter number  ',
                ),
              ),
              // call back เรียกกลับมา
              ElevatedButton(
                onPressed: CF,
                child: Text("Celsius to Fahrenheit"),
              ),
              ElevatedButton(
                onPressed: FC,
                child: Text("Fahrenheit to Celsius"),
              ),
              ElevatedButton(
                onPressed: KC,
                child: Text("Kelvin to Celsius"),
              ),
              ElevatedButton(
                onPressed: CK,
                child: Text("Celsius to Kelvin"),
              ),
              ElevatedButton(
                onPressed: FK,
                child: Text("Fahrenheit to Kelvin"),
              ),
              ElevatedButton(
                onPressed: KF,
                child: Text("Kelvin to Fahrenheit"),
              ),
              Text(_feedbackText),
            ],
          ),
 */