//  入口函数
void main(List<String> args) {
  // 打印内容
  print("hello word");

  // 声明变量
  // 1. 明确的声明
  String name = "小明";

  // 类型推导
  // 类型推导的方式虽然没有明确的指定变量的类型，但是变量是有自己明确的类型的
  var age = 20;

  // 声明常量
  // 1. final
  final height = 1.88;

  // 2. const
  const address = '江西省';

  // final 与 const 的区别
  // const 必须赋值常量值(编译期间需要一个明确的值)
  // final 可以通过计算/函数获取一个值（运行期间来确定一个值）
  // 例如：
  //  const date1 = DateTime.now(); 会报错，应为他是在运行期间获取的值，需要下面的操作
  final data2 = DateTime.now();

  // 对比两个对象是否相等
  final p1 = Person('why');
  final p2 = Person("why");

  // 判断两个对象是否为同一个对象
  print(identical(p1, p2));

  const d1 = Dog('xiaoming');
  const d2 = Dog('xiaoming');
  print(identical(d1, d2));


  // 

}

class Person {
  // 声明延迟变量，使用关键字 late 修饰
  late String name;

  // 构造函数
  Person(String name) {
    this.name = name;
  }
}

class Dog {
  final String name;
  const Dog(this.name);
}
