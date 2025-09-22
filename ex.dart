/**void main(){  //기본 for문 1~10까지
  for(int i = 1; i <= 10; i++){
    print(i);
  }
}
void main(){    //for문을 이용한 구구단
  for(int y =1; y <=9 y++){
  print("2 * $y = ${2 * y}");
  }
  for(int y =1; y <=9 y++){
  print("3 * $y = ${2 * y}");
  }
  for(int y =1; y <=9 y++){
  print("4 * $y = ${2 * y}");
  }
}

void main() {     //2중 for문으로 만든 구구단
  for (int x = 2; x < 10; x++) {
    for (int y = 1; y < 10; y++) {
      int hap = x * y;
      print('$x X $y = $hap ');
    }
    print("\n");
  }
}
void main(){
  String? myName = '디모이';
  print(myName);
  myName = '''
  머도기당
  간다~ 드래프트  
  ''';
  print(myName);  
}
void main(){
  Set<String> snacks = {"초코파이","초코파이","새우깡","양파링","고구마깡","고구마깡"};
  print(snacks);
  List<String> snacksList = ["초코파이","초코파이","새우깡","양파링","고구마깡","고구마깡"];
  print(snacksList);

  var snacks2 = {};
  print(snacks2.runtimeType);
}
void main(){
  var simpleUserInformation = {
    "name" : "개발하는 남자", //key value 모델링
    "age" : 24,
    "phone" : "010-1234-5678",
  };
  print(simpleUserInformation);
  print(simpleUserInformation.runtimeType);
  print(simpleUserInformation["phone"]);
  simpleUserInformation['phone'] = '010-4545-5454';
  print(simpleUserInformation);
  } enum ColorType{
      RED(Colors.red),
      YELLOW(Color.yellow),
      BLUE(Color.blue);

      const ColorType(this.colorValue);
      final Color colorValue;
  }
  void main(){
    print(5 + 5);
    var a = 2;
    var b = 8;
    print(a + b);
  }
  void main(){
    var a = 10;
    var b = 20;
    var c = 9;
    var d = 10;

    var nums = [10,20,9,10];

    print(a < b);
    print(a < c);
    print(a > c);
    print(a > d);
    print(a >= d);
    print(a == d);
    print(a == c);
    print(a < b);
    }
import 'dart:io';

void main(){
  var n = 20;
  var output = StringBuffer();
  for(var y = 0; y <n; y++){
    
    for(var x = 0; x < n; x++){
      var condition = y == 0 || x == 0 || y == n - 1 || x == n- 1;
      condition = condition || x == y;
      condition = condition || (n - x - 1) == y;
      if(condition){
      output.write('#');
      }else{
      output.write(' ');
    }
  }
    output.writeln();
  }

  print(output.toString());
}
void main(){
  var a = true;
  var b = false;

  var orResult = a || b;
  var andResult = a && b;

  print(orResult);
  print(andResult);
}
void main(){
  var age = 37;

  if(age > 20){
    print('성인');
  } else{
    print('미성년자자');
  }
}
enum Fruit{Apple,Lemon,Grape,Mandarin}
void main(){
 // for(var i = 0; i <Fruit.values.length; i++){
//    print(Fruit.values[i]);
//  }

  var lottoNums =  {4 ,5 ,12 ,23 ,34 ,43};
  print(lottoNums);

 // for(var i = 0; i<lottoNums.length; i++){
//    print(lottoNums.elementAt(i));    //Set 배열 접근문
 // }

  for(var num in lottoNums){
    print(num);
  }

  lottoNums.forEach((num) => print(num));
}
void main(){   와일문문
  var condition = true;
  while(condition){
    print('실행!');
    condition = false;
  }
}**/
void main() {     //2중 for문으로 만든 구구단
  for (int dan = 2; dan < 10; dan++) {
    printDan(dan);
    print("$dan단");
  }
}
//함수를 활용한 다중 포문
void printDan(int dan){
  for (int y = 1; y < 10; y++) {
      int hap = dan * y;
      print('$dan X $y = $hap ');
    } 
}