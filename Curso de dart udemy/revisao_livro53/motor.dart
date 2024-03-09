class Motor {
  final double motor;
  final int cv;

  const Motor({required this.motor, required this.cv});

  @override
  String toString() => 'Motor:$motor, CV:$cv';
}
