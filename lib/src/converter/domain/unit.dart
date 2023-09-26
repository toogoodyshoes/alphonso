class Unit {
  const Unit({
    required this.name,
    required this.conversionFactors,
  });
  final String name;
  final Map<String, num> conversionFactors;

  @override
  String toString() => name.toLowerCase();
}
