class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void printProperties() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}

void main() {
  Car myCar = Car('Toyota', 'Camry', 2022);
  myCar.printProperties();
}
