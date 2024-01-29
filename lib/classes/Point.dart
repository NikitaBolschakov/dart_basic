import 'dart:math';

class Point {
  double x;
  double y;
  double z;

  Point(this.x, this.y, this.z);

  factory Point.origin() {
    return Point(0, 0, 0);
  }

  factory Point.unitVector() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point another) {
    //PQ = √[(x2 – x1)^2 + (y2 – y1)^2 + (z2 – z1)^2]
    double dx = x - another.x;
    double dy = y - another.y;
    double dz = z - another.z;

    double distance = sqrt(dx * dx + dy * dy + dz * dz);
    return distance;
  }

  double areaTriangle(Point a, Point b, Point c) {
    double ab = a.distanceTo(b);
    double ac = a.distanceTo(c);
    double bc = b.distanceTo(c);
    double p = (ab + ac + bc) / 2; // полупериметр
    double area = sqrt(p * (p - ab) * (p - ac) * (p - bc));

    return area;
  }
}
