void main() {
  for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("Super Quiz");
      continue;
    } else if (i % 5 == 0) {
      print("Quiz");
      continue;
    } else if (i % 3 == 0) {
      print("Super");
      continue;
    } else {
      print(i);
    }
  }
}
