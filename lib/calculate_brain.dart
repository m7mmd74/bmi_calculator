import 'dart:math';
class CalculateBrain {
  CalculateBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi > 30){
      return 'Obese';
    } else if(_bmi >= 25 && _bmi <= 30){
      return 'Overweight';
    }else if (_bmi >= 18.0 && _bmi <=25){
      return 'Normal Weight';
    }else {
      return 'Underweight';
    }
  }
  String getInterPretation(){
    if(_bmi > 30){
      return 'You have an Obese. You should visit your doctor ';
    } else if(_bmi >= 25 && _bmi <= 30){
      return 'You have a higher than Normal body weight. Try to exercise more';
    }else if (_bmi >= 18.0 && _bmi <=25){
      return 'You have Normal body Weight. Good job';
    }else {
      return 'You have a lower than Normal body weight. You can eat a bit more!';
    }
  }
}
