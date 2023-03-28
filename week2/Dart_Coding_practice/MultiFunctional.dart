void main() {
  // 1. Hello World
  print('Hello, world!');

  // 2. Simple math operations
  int a = 10, b = 5;
  print('a + b = ${a + b}');
  print('a - b = ${a - b}');
  print('a * b = ${a * b}');
  print('a / b = ${a / b}');

  // 3. Find maximum of two numbers
  print('Max of $a and $b is ${a > b ? a : b}');

  // 4. Swap two numbers
  int temp = a;
  a = b;
  b = temp;
  print('a = $a, b = $b');

  // 5. Check if a number is even or odd
  int c = 7;
  if (c % 2 == 0) {
    print('$c is even');
  } else {
    print('$c is odd');
  }

  // 6. Check if a number is prime
  int n = 17;
  bool isPrime = true;
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    print('$n is a prime number');
  } else {
    print('$n is not a prime number');
  }

  // 7. Find factorial of a number
  int num = 5;
  int fact = 1;
  for (int i = 1; i <= num; i++) {
    fact *= i;
  }
  print('Factorial of $num is $fact');

  // 8. Check if a string is a palindrome
  String str = 'racecar';
  String rev = str.split('').reversed.join();
  if (str == rev) {
    print('$str is a palindrome');
  } else {
    print('$str is not a palindrome');
  }

  // 9. Find length of a string
  print('Length of $str is ${str.length}');

  // 10. Convert a string to uppercase
  String upper = str.toUpperCase();
  print('Uppercase of $str is $upper');
}