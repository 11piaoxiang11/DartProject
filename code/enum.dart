enum PlanetType {
  terrestrial,
  ice,
  gas,
}

enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  const Planet({
    required this.planetType,
    this.moons = 0,
    this.hasRings = false,
  });

  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

void main() {
  final yourPlanet = Planet.uranus;
  if (!yourPlanet.isGiant) {
    print('Your planet is not a "giant planet".');
  }
}
