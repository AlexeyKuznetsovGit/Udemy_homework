void main() {
  Cuboid cuboid = Cuboid(1, 2, 3);
  print("Cuboid SurfaceArea = ");
  print(cuboid.SurfaceArea);
  print("Cuboid Volume = ");
  print(cuboid.Volume);

  Cube cube = Cube(2);
  print("Cube SurfaceArea = ");
  print(cube.SurfaceArea);
  print("Cube Volume = ");
  print(cube.Volume);
}

class Cuboid {
  int length;
  int width;
  int height;

  Cuboid(this.length, this.width, this.height);

  int get SurfaceArea {
    return 2 * (length * width + width * height + length * height);
  }

  int get Volume {
    return length * width * height;
  }
}

class Cube extends Cuboid {
  int length;

  Cube(this.length) : super(length, length, length);
}
