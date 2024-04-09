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

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();
  var voyager3 = Spacecraft.unLaunched('Voyager III');
  voyager3.describe();
}
