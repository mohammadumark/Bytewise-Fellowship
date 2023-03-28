int sum(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum;
}

void main() {
  List<int> numbers = [1, 4, 2, 8, 5, 9];
  int result = sum(numbers);
  print("Sum of elements is: $result");
}