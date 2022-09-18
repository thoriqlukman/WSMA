void main() {
  print(num.parse('12')); //12
  print(num.parse('10.91')); //10.91}

//Error
  print(num.parse('12A'));
  print(num.parse('AAAA'));
}
