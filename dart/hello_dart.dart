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
  // const 唏嘘赋值常量值(编译期间需要一个确定的值)
  // final 可以通过计算/函数获取一个值（运行期间来确定一个值）
  

} 

