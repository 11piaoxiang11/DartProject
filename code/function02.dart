void main() {
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  flybyObjects.where((element) => element.contains('turn')).forEach(print);
}
