class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void printProperties() {
    print("Brand: $brand, Model: $model, Year: $year");
  }

  void makeSound() {
    print("Vroom Vroom");
  }
}

class ElectricCar extends Car {
  double batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife)
      : super(brand, model, year);

  void printBatteryLife() {
    print("Battery Life: $batteryLife kWh");
  }
}

void main() {
  Car myCar = Car("Toyota", "Camry", 2022);
  myCar.printProperties();
  myCar.makeSound();

  ElectricCar myElectricCar = ElectricCar("Tesla", "Model 3", 2022, 75.0);
  myElectricCar.printProperties();
  myElectricCar.makeSound();
  myElectricCar.printBatteryLife();
}
