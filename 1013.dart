void main(){
  var size = 10;
  for(var i = 0; i < size; i++){
  printStrip(size, i);
  }
print(" ");
for(var i = 0; i < size; i++){
  printSharp(size, i);
  }
print(" ");
for (var i = 0; i<size; i++){
  printSquare(size, i);
  }
}

void printStrip(int size, int y){
  var result = "";
  for(var x = 0; x < size; x++){
    var condition = x==y;
    if(condition){
      result += "#";
    } else {
      result += ' ';
    }
  }
  print(result);
}

void printSharp(int size, int y){
  var result = "";
  for(var x = 0; x < size; x++){
    var condition = 
    x == y || size - 1 - x == y;
    if(condition){
      result += "#";
    } else {
      result += ' ';
    }
  }
  print(result);
}

void printSquare(int size, int y){
  var result = "";
  for(var x = 0; x < size; x++){
    //#이 찍힐 논리적 조건 (조건이 참이면 #, 거짓이면 공백)
    var outline = x == 0 || x == size - 1 || y == 0 || y == size - 1;    //테두리 
    var sharp = x == y || size - 1 - x == y; //대각선

    // 최종 조건: 테두리이거나 OR 대각선일 때 (#)
    var condition = outline || sharp;
    if(condition){
      result += "#";
    } else {
      result += ' ';
    }
  }
  print(result);
}