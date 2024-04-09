class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  Spacecraft(this.name, this.launchDate) {}

  Spacecraft.unLaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('UnLaunched');
    }
  }
}

class Orbiter extends Spacecraft {
  double altitude;
  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

void main() {
  var Orbiter1 = Orbiter('Voyager I', DateTime(1977, 9, 5), 1);
  Orbiter1.describe();
}
