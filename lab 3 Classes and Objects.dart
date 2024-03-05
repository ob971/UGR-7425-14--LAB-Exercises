class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void printProperties() {
    print('Brand: $brand, Model: $model, Year: $year');
  }

  void vroom() {
    print('Vroom Vroom');
  }
}

class ElectricCar extends Car {
  double batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife)
      : super(brand, model, year);

  @override
  void printProperties() {
    super.printProperties();
    print('Battery Life: $batteryLife');
  }
}

void main() {
  ElectricCar myElectricCar = ElectricCar('Tesla', 'Model S', 2024, 300);
  myElectricCar.printProperties();
}
