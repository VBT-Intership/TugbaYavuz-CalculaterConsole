import 'dart:io';

void main(List<String> args) {


  print('1.sayıyı girin:\n');
  double number1 = double.parse(stdin.readLineSync());

  print('2.sayıyı girin:\n');
  double number2 = double.parse(stdin.readLineSync());


  print('*****yapmak istediğiniz işlem için asagidaki işlemleri uygulayınız*****');
  print(
    'Toplama icin 1  giriniz\n '
    'Cıkarma için 2  giriniz\n'
    'Carpma  için 3  giriniz\n'
    'Bolme   için 4  giriniz\n'
    'Çıkmak  için -1 giriniz');

    
  while(true){
    String secim = stdin.readLineSync();

    if(secim == 'e'){
      break;
    }
    else
    print('${secim}');

    switch (secim) {
      case '1':
        var sonuc = number1 + number2;
        print(sonuc);
        break;
      case '2':
        var sonuc = number1 - number2;
        print(sonuc);
        break; 
      case '3':
        var sonuc = number1 * number2;
        print(sonuc);
        break;
      case '4':
      var sonuc;
        {
        if (number2 == 0)
          throw new IntegerDivisionByZeroException();
        else
          sonuc = number1 / number2;
          print(sonuc);
          break;
        }   
      default:
    }
    
  }
}