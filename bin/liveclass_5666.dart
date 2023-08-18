class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
  int getMilesDrivenAsInt() {
    return milesDriven.toInt();
  }
}

void main() {
  Car car1 = Car("Toyota", "Camry", 2020, 9000.0);
  Car car2 = Car("Honda", "Civic", 2018, 6500.0);
  Car car3 = Car("Ford", "F-150", 2015, 14200.0);

  car1.drive(1000.0);
  car2.drive(1500.0);
  car3.drive(800.0);

  print("Car 1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()}, Miles: \n${car1.getMilesDrivenAsInt()}, Age: ${car1.getAge()}");
  print("Car 2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()}, Miles: \n${car2.getMilesDrivenAsInt()}, Age: ${car2.getAge()}");
  print("Car 3:");
  print("${car3.getBrand()}");
  print("${car3.getModel()}");
  print("${car3.getYear()}");
  print("Miles:");
  print("${car3.getMilesDrivenAsInt()}");
  print("Age: ${car3.getAge()} years");

  print("\nTotal \nnumber \nof cars \ncreated: \n${Car.numberOfCars}");
}
