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

  //
}
