import 'dart:math';

void main() {
  
}

class Point {
  double x;
  double y;
  double z;

  Point(this.x, this.y, this.z);

  double distanceTo(Point another) {
    double dx = this.x - another.x;
    double dy = this.y - another.y;
    double dz = this.z - another.z;
    double distance = sqrt(dx * dx + dy * dy + dz * dz);
    return distance;
  }
}

