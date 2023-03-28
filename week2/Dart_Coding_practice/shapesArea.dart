import 'dart:math';

// Square
double squareArea(double side) {
  return side * side;
}

double squarePerimeter(double side) {
  return 4 * side;
}

// Rectangle
double rectangleArea(double length, double width) {
  return length * width;
}

double rectanglePerimeter(double length, double width) {
  return 2 * (length + width);
}

// Cube
double cubeSurfaceArea(double side) {
  return 6 * side * side;
}

double cubeVolume(double side) {
  return side * side * side;
}

// Circle
double circleArea(double radius) {
  return pi * radius * radius;
}

double circleCircumference(double radius) {
  return 2 * pi * radius;
}

// Cylinder
double cylinderSurfaceArea(double radius, double height) {
  return 2 * pi * radius * height + 2 * pi * radius * radius;
}

double cylinderVolume(double radius, double height) {
  return pi * radius * radius * height;
}

// Triangle
double triangleArea(double base, double height) {
  return 0.5 * base * height;
}

double trianglePerimeter(double side1, double side2, double side3) {
  return side1 + side2 + side3;
}

void main() {
  // Example usage
  print(squareArea(5)); 
  print(squarePerimeter(5));
  print(rectangleArea(4, 6)); 
  print(rectanglePerimeter(4, 6));
  print(cubeSurfaceArea(3));
  print(cubeVolume(3)); 
  print(circleArea(2.5)); 
  print(circleCircumference(2.5));
  print(cylinderSurfaceArea(2, 4)); 
  print(cylinderVolume(2, 4)); 
  print(triangleArea(3, 4)); 
  print(trianglePerimeter(3, 4, 5));
}