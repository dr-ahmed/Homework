abstract class SmartDevice {
  String name;
  bool isOn = false;

  SmartDevice(this.name);

  void turnOn() {
    isOn = true;
    print('$name is turned ON.');
  }

  void turnOff() {
    isOn = false;
    print('$name is turned OFF.');
  }
}

class Light extends SmartDevice {
  Light(String name) : super(name);
}

class AirConditioner extends SmartDevice {
  double temperature;

  AirConditioner(String name, {this.temperature = 24.0}) : super(name);

  void setTemperature(double temp) {
    if (isOn) {
      temperature = temp;
      print('$name temperature set to $temperature°C.');
    } else {
      print('$name is OFF. Turn it ON to adjust temperature.');
    }
  }
}

class SecurityCamera extends SmartDevice {
  bool motionDetection = false;

  SecurityCamera(String name) : super(name);

  void enableMotionDetection() {
    if (isOn) {
      motionDetection = true;
      print('$name motion detection enabled.');
    } else {
      print('$name is OFF. Turn it ON to enable motion detection.');
    }
  }
}

class SmartHome {
  List<SmartDevice> devices = [];

  void addDevice(SmartDevice device) {
    devices.add(device);
  }

  void turnAllOn() {
    for (var device in devices) {
      device.turnOn();
    }
  }

  void turnAllOff() {
    for (var device in devices) {
      device.turnOff();
    }
  }
}

void main() {
  var light = Light('Living Room Light');
  var ac = AirConditioner('Bedroom AC');
  var camera = SecurityCamera('Front Door Camera');

  var home = SmartHome();
  home.addDevice(light);
  home.addDevice(ac);
  home.addDevice(camera);

  home.turnAllOn();
  ac.setTemperature(22);
  camera.enableMotionDetection();
  home.turnAllOff();
}
