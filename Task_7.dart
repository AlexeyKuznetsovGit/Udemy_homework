void main() {
  List list = [1, -10, 9, -1];
  List list1 = [-1, -2, -3];
  List list2 = [];
  List list3 = [1, 2];
  int sum = 0;
  int sum1 = 0;
  int sum2 = 0;
  int sum3 = 0;

  Function function = (list, list1, list2, list3) {
    for (int el in list) {
      if (el < 0) {
        continue;
      }
      sum += el;
    }
    for (int el in list1) {
      if (el < 0) {
        continue;
      }
      sum1 += el;
    }
    for (int el in list2) {
      if (el < 0) {
        continue;
      }
      sum2 += el;
    }
    for (int el in list3) {
      if (el < 0) {
        continue;
      }
      sum3 += el;
    }
    print("$list => $sum");
    print("$list1 => $sum1");
    print("$list2 => $sum2");
    print("$list3 => $sum3");
  };
  function(list, list1, list2, list3);
}
