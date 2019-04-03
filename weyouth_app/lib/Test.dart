void main(){
  A a1 = new A(1);
  change(a1);
  a1.printz();
}
class A {
  int a;
  A(int b){
    a = b;
  }
  void printz(){
    print(a);
  }
}

void change(A a){
  A b = new A(2);
  a = b;
}