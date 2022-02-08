void main() {
  int a = 2;
  int b = 555;
  int c = 236455;
  int counter_A = 1;
  int counter_B = 1;
  int counter_C = 1;

  while ((a ~/= 10) > 0) counter_A++;
  print(counter_A);

  while ((b ~/= 10) > 0) counter_B++;
  print(counter_B);

  while ((c ~/= 10) > 0) counter_C++;
  print(counter_C);
}
