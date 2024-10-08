void main(List<String> args) {
  // 布尔类型

  // dart中没有非空即真
  // 例如
  const flag = true;
  if (flag) {
    print("真");
  }
  // 在js中flag可以是其他数据，只要存在数据，就可以表示为真，但是在dart中，判断代码中必须是 true 或 false

  // 下面的代码会报错
  // const str = '123';
  // if (str) {
  //   print("真");
  // }

  // 字符串类型
  // 1、定义字符串
  var srt1 = '123456';
  var str2 = "456789";
  var str3 = """79797  
  47487
  787478574"""; // 三个引号可以换行表示

  // 2. 字符串和表达式进行拼接
  var name = "小明";
  var age = 18;
  var height = 1.88;
  // 在表达式中如果只是一个单独的变量可以去除{}
  final message = "name is $name, age is ${age}, height is ${height}";
  final message2 =
      "name is ${name}, type id ${name.runtimeType}"; // runtimeType 获取变量类型
  print(message2);
  print(message);

  // 集合类型
  // 1. 列表
  var names = ['asdasd', 'wqdqwd', 'qwedqwd', 'qwedqwd'];
  // 2. 集合Set
  // 去重后转换为列表
  print(Set.from(names).toList());
  // 3. 映射Map
  var info = {"name": 'sadsa', "age": 18};

  // 函数
  // 1. 函数的基本使用
  print(sum(20, 30));
  // 2. 必选参数
  sayHello1("hello");
  // 2. 函数的可选参数
  sayHello2('world');
  sayHello3('hello world');

  // 函数可以作为参数调用
  test(bar);
}

// 在方法中的返回值的类型式可以省略的（类型推断， 开发中不推荐这么使用）
int sum(int num1, int num2) {
  return num1 + num2;
}

// 必选参数： 必须传
void sayHello1(String name) {
  print(name);
}

// 可选参数： 位置可选参数 - 命名可选参数
// 位置可选参数： [int age, double height]
// 在 dart 中不存在方法的重载， 不能存在两个相同的方法
// 实参和形参是根据位置匹配的
void sayHello2(String name, [int? age, double? height]) {
  print('名称为$name,年龄为$age,身高为$height');
}

// 命名可选参数
// 默认值，只有可选参数才可以设置默认值
void sayHello3(String name, {int? age = 18, double? height}) {
  print('名称为$name,年龄为$age,身高为$height');
}

// 函数是一等公民
// 函数可以作为另一个函数的参数
void test(Function foo) {
  foo();
}

void bar() {
  print("bar函数被调用了");
}
