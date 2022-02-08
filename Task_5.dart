void main() {
  List list = ["dart", "abc", "good luck"];
  for (int i = 0; i < list.length; i++) {
    if (list[i] == "dart") {
      list[i] = 43 * (i + 1);
    }
    if (list[i] == "abc") {
      list[i] = 6 * (i + 1);
    }
    if (list[i] == "good luck") {
      list[i] = 88 * (i + 1);
    }
  }
  print(list);
}
