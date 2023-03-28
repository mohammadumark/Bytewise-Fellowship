bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int n = 17;
  bool result = isPrime(n);
  if (result == true) {
    print("$n is a prime number");
  } else {
    print("$n is not a prime number");
  }
}