void main() {
  List list = ["a", "ab", "abc"];
  List list1 = ["abcde", "ab", "abc"];
  List list2 = [];
  int count = 0;
  int count1 = 0;
  int count2 = 0;

  Function function = (List list, List list1, List list2) {
    for (String str in list) {
      count += str.length;
    }
    for (String str in list1) {
      count1 += str.length;
    }
    for (String str in list2) {
      count2 += str.length;
    }
    print("$list => $count");
    print("$list1 => $count1");
    print("$list2 => $count2");
  };
  function(list, list1, list2);
}
