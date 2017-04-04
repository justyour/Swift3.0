//
//  main.swift
//  swif3.0基础
//
//  Created by kms on 16/12/17.
//  Copyright © 2016年 KMS. All rights reserved.
//

import Foundation

print("Hello, World!")

//常量，不需指定数据类型，可根据赋值来判断数据类型
let aIntLet = 100

//定义一个变量，不需指定数据类型，可根据赋值来判断数据类型
var aInt = 10
//   \() 拼接字符串
print("aint=\(aInt)");

//指定数据类型
let b : Int = 100
var c : Float = 100 //变量
c = 110
print("b=\(b),c=\(c)")

let lab = "This label width is"
let width = 100
let labWidth = "\(lab) = \(width)"
print(labWidth)

let appleFloat : Float = 2.0
let oranges : Float = 8.7
let fruit = "I Have \(appleFloat + oranges ) fruit"
print(fruit)

//-----字符串
var visStrng = "Hello Word!"
//得到字符串中每个字符
for i in visStrng.characters{

    print("item==\(i)")
}

//访问指定的字符
print("after == \(visStrng.index(after: visStrng.startIndex))")
print("before == \(visStrng.index(before: visStrng.endIndex))")

//从第一个字符开始查找，第四个字符
let chars = visStrng.index(visStrng.startIndex, offsetBy: 4)
print("offsetBy==\(visStrng[chars]))")

//字符串插入
let  insertIndex = visStrng.index(visStrng.startIndex, offsetBy: 5)
visStrng.insert("w", at: insertIndex)
print("new string = \(visStrng)")

visStrng.insert(contentsOf: " I Comeing".characters, at: visStrng.endIndex)
print("new to string = \(visStrng)")
//删除字符串
visStrng.remove(at: visStrng.index(visStrng.startIndex, offsetBy: 5))
print("remove stirng = \(visStrng)")

//字符串比较  hasPrefix(_:) / hasSuffix(_:)  获取字符串的前缀和后缀
var comperStr1 = "Hello Word!"
var comperStr2 = "Hello Word!"
if comperStr1 == comperStr2{

    print("两个相等")
}else{

    print("不相等")
}

//Swift 语言提供 Arrays 、 Sets 和 Dictionaries 三种基本的 合类型用来存储 合数据。数组(Arrays)是有序数据的 。 合(Sets)是无序无重复数据的 。字典(Dictionaries)是无序的键值对的 。

//创建一个string类型的空数组
let empetyArr = [String]()

//创建带默认值得数组 repeating:默认值， count：数组包含多少个元素
var defaultValueArr = Array(repeating:0, count:3)
print(defaultValueArr)

//两数组相加组成新数组
var threeValueArr = Array(repeating:0, count:3)
var otherThreeValueArr = Array(repeating:1, count:3)
var addNewArr = threeValueArr+otherThreeValueArr
print("两数组相加组成的新数组\(addNewArr)")

//数组增删改查
var shopList = ["Eggs", "Milk"]
//往数组里添加元素
shopList.append("Flour")
shopList += ["Cheese","bananes"]
shopList.insert("orgines", at: 0)

//更改元素
shopList[0] = "Apple"
shopList[0...4] = ["A","B","C","D","E"]//改变下标0--4的元素的值
//shopList[0...4] = ["F","E"]//将数组0--4的下标改成 F E  数组元素总数改变


for value in shopList{

    print("value = \(value)")
}
//可获取下标和值 enumerated()
for (index,value) in shopList.enumerated(){

    print("index = \(index) value = \(value)")
}

//删除数组
shopList.remove(at: 0)
shopList.removeLast()
shopList.removeFirst()


//判断数组是否为空，查询数组个数
if !shopList.isEmpty{
    
    print("arrCount == \(shopList.count)")
}

//删除数组中所有的元素
/*
 scrollArr.removeAll()
 print(scrollArr)
 */
//创建一个任意类型的空数组
var addArr = [Any]()
for var a in 0...10 //循环0到10之间的数，包括0 和 10
{
    
    addArr.append(String(a))
}
print("addrr = \(addArr)")

//// Sets集合 Swift 中的 Set 类型被写为 Set<Element> ,这里的 Element 表示 Set 中允许存储的类型,和数组不同的是,  合没有等价的简化形式。
//创建一个空的集合
var letters = Set<Character>() //一个字符型的集合
print("letters is of type Set<Character> with \(letters.count) items.")
// favoriteGenres 被构造成含有三个初始值的集合  这个 favoriteGenres 变量被声明为“一个 String 值的 合”,写为 Set<String> 。由于这个特定的 合含有指 定 String 类型的值,所以它只允许存储 String 类型值。这里的 favoriteGenres 变量有三个 String 类型的初始 值( "Rock" , "Classical" 和 "Hip hop" ),并以数组字面量的方式出现。
var favoriteGenres:Set<String> = ["Rock", "Classical", "Hip hop"]
//上下两者等价
var favoriteGenres1:Set = ["Rock", "Classical", "Hip hop"]

//访问和修改一个集合
print("Set favoriteGenres.coung = \(favoriteGenres.count)")//访问集合中的数量

//判断集合是否为空
if favoriteGenres.isEmpty{

    print("isEMpty")
}else{

    print("Not Empty")
}
//添加新元素
favoriteGenres.insert("Jazz")
//删除集合中的元素---判断要删除的元素是否存在  Set 中的所有元素可以通过它的 removeAl l() 方法删除。
if let removeGenres = favoriteGenres.remove("Jazz"){
    
    print("\(removeGenres),I over it")
}else{
    
    print("I neven Found It ")
}

//使用 contains(_:) 方法去检查 Set 中是否包含一个特定的值:
if favoriteGenres.contains("Rock"){
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

//遍历集合
for genre in favoriteGenres{

    print(genre)
}
//遍历集合，排序
for genre in favoriteGenres.sorted(){
    print(genre)
}

let addDigits:Set = ["1","3","5","7","9"]
let evenDigits:Set = ["0","2","4","6","8","9"]
let singleDigits:Set = ["2","3","5","7"]
let equlesDigits:Set = ["1","3","5","7","9"]
let smallDigits:Set = ["3","5"]
//使用 union(_:) 方法根据两个 合的值创建一个新的集合
print(addDigits.union(evenDigits).sorted())
// 使用 intersection(_:) 方法根据两个集合中都包含的值创建的一个新的集合。
print(addDigits.intersection(evenDigits))
//方法--根据不在该集合中的值创建一个新的集合。
print(addDigits.subtracting(evenDigits))
//方法根据在一个集合中但不在两个集合中的值创建一个新的集合。
print(addDigits.symmetricDifference(evenDigits))

/*
 • 使用“是否相等”运算符( == )来判断两个集合是否包含全部相同的值。
 • 使用 isSubset(of:) 方法来判断一个集合中的值是否也被包含在另外一个集合中。
 • 使用 isSuperset(of:) 方法来判断一个集合中包含另一个集合中所有的值。
 • 使用 isStrictSubset(of:) 或者 isStrictSuperset(of:) 方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等。
 • 使用 isDisjoint(with:) 方法来判断两个集合是否不含有相同的值(是否没有交集)。
*/

if addDigits == equlesDigits{
    print("全部包含相同的值")
}else{
    print("全部不包含相同的值")
}

if smallDigits .isSubset(of: addDigits){

    print("smallDigits 包含在 addDigits")
}else{
    print("smallDigits 不包含在 addDigits")
}

if addDigits.isSuperset(of: smallDigits){
    print("addDigits 中包含了 smallDigits 中所有的值")
}else{
     print("addDigits 中不包含包含 smallDigits 中所有的值")
}

if addDigits.isStrictSuperset(of: smallDigits){

    print("addDigits 是 smallDigits 的父集合")
}else{

    print("addDigits 不是 smallDigits 的父集合")

}

if smallDigits .isStrictSubset(of: addDigits){
    print("smallDigits 是 addDigits 的子集合")
}else{

    print("smallDigits 不是 addDigits 的子集合")
}

//判断两个集合中是否没有相同的值--有返回false ,没有返回true
if addDigits.isDisjoint(with: evenDigits){
    print("两个集合中没相同的值")
}else{
    print("两个集合中有相同的值")
}

/*****  字典   ******/

var personInfo = [String:String]()
personInfo = ["name":"zhangsan","sex":"man","age":"18","phone":"1342890999"]

//-----字典的增删改查
//往字典中插入数据
personInfo["address"] = "shenzhen"
//更新一个值
personInfo["name"] = "wangwu"
//personInfo.updateValue("lisi", forKey: "name")//根据key更新值,返回一个未更新之前的值
if let oldValue = personInfo.updateValue("lisi", forKey: "name"){
    print("the dictionary for key name oldValue:\(oldValue)")
}
//删除字典中的数据 比较当没有值是返回nil
if let personInfo = personInfo["age"]{
    print("person age is \(personInfo)")
}else{
    print("The person Not birth")
}
personInfo["address"] = nil//删除字典中的键值
personInfo.removeValue(forKey: "sex")//跟据key删除
//字典查找
print("Dictionary is Count \(personInfo.count)")//计算字典中的总数
//循环遍历字典中的键--值
for (key,value) in personInfo{

    print("Dictionary key is \(key) and Value is \(value)")
}
//循环出字典中的值  personInfo.values 遍历字典中的值 personInfo.keys 遍历字典中的key
for value in personInfo.values{

    print("Dictionary value is \(value)")
}

//对字典中根据keys排序 personInfo.keys.sorted() 根据key来排序，personInfo.values.sorted() 根据值来排序遍历
for sorteValue in personInfo.keys.sorted(){

    print("Dictionary keySorted is \(sorteValue)")
    
}

//空字典
let emptyDic = [String : Float]()

var scrollArr = ["19","90","100"]
scrollArr.append("88")//向数组内添加元素

//print(scrollArr[0])
for arrindex in scrollArr{
    print("数组元素 = \(arrindex)")
}

//
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
print(occupations)
//更改字典的值
occupations.updateValue("java", forKey: "Kaylee")
print(occupations)
//删除
occupations.removeValue(forKey: "Kaylee");
print(occupations)
//遍历字典，
for (key,value) in occupations{

    print("key==\(key),value = \(value)")
}

let individualScores = [70,80,78,45,90]
var scoresCount = 0
for var a in individualScores{

    if a > 50 //在 if 语句中,条件必须是一个布尔表达式
    {
        scoresCount += a
    }else{
        
        print("low = \(a)")
    }
}
print("scoresCount = \(scoresCount)")

//可选类型的变量
var opentionString : String? = "hello"
print(opentionString == "hello")

var opentionName : String? = "Tony"
var getting = "hello!"
if let name = opentionName{
    
    getting = "hello,\(name)"
}
print(getting)

// ?? operationStr ?? fullName 当前一个不为空时，则去第一个 反正则去第二个
var operationStr : String? = nil
var fullName : String = "chenbing"
print(operationStr ?? fullName)

//swith 可以用于任意类型的比较  支持任意类型的数据以及各种比较操作——不仅仅是整数以及测试相等。
//运行 switch 中匹配到的子句之后,程序会退出 switch 语句,并不会继续向下运行,所以不需要在每个子句结尾 写 break 。
let switchInt = 8
switch switchInt{
case 5:
    print("5")
case 8:
    print("Is True")
default:
    print("anySomeing")
}

let swithcStr = "red pepper"
switch swithcStr{

case let x where x.hasPrefix("pepper"): //hasPrefix 前缀比较 hasSuffix 后缀
    print("x is \(x)")
default:
    print("defaults")
}

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
    
case let x where x.hasSuffix("red"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

//case同时匹配 a 和 A ,可以将这个两个值组合成一个复合匹配
let anotherCharacter = "a"
switch anotherCharacter{

case "a","A":
    print("is True")
default:
    print("is Default")
}

//区间匹配
let counts = 66
switch counts{
case 1...20:
    print("在20--40之间")
case 21...40:
    print("在20--40之间")
case 41...60:
    print("在41--60之间")
case 61...80:
    print("在61--80之间")
default:
    print("不在任何区间")
}

//witch中的元组
let somePoint = (1,1)
switch somePoint{
case (_,0): //使用下划 线( _ )来匹配所有可能的值。
    print("(\(somePoint.0), 1) is on the x-axis")
case (-2...2,-2...2):
    print("is on the box")
default:
     print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}
//case 分支允许将匹配的值绑定到一个临时的常量或变量,并且在case分支体内使用 —— 这种行为被称为值绑 定(value binding),因为匹配的值在case分支体内,与临时的常量或变量绑定。
let anotherPoints = (2, 0)
switch anotherPoints {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

//case中带whewe语句的可不带default
let anotherPoint2 = (1,-1)
switch anotherPoint2{
    
case let (x,y) where x == y:
     print("(\(x), \(y)) is on the line x == y")
case let(x,y) where x == -y:
     print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

///#available检测API的可用性 最后一个参数, * ,是必须的,用于指定在所有其它平台中,如果版本号高于你的设 备指定的最低版本,if语句的代码块将会运行。
if #available(iOS 10, macOS 10.12, *){
    //版本要求，ios 10 以上，MacOS10.12以上
    print("API可用")
    
}else{
    print("API不可用")
}

//函数
// (参数名字:数据类型, age:String)   -> String 返回数据类型
func getting(name:String, age:String) -> String {
    
    return "Hello name = \(name),age = \(age)"
}

var callBackStr = getting(name: "张三",age: "20")
print(callBackStr)

func greet(person:String, alreadyGreeted:Bool) -> String {
    
    if alreadyGreeted {
        return getting(name: person, age: "18")
    }else{
        return "your welcome"
    }
}

print(greet(person: "jhone", alreadyGreeted: true))

//带多个返回值
func somefune(name:String,age:Int,city:String) -> (String,Int,String) {
    
    let names = "name is \(name)"
    let ages = age
    let citys = "city is \(city)"
    return (names,ages,citys)
}

let someCallFunc = somefune(name: "李四", age: 18, city: "深圳")
print("person info someCallFunc is \(someCallFunc.2)") //someCallFunc.2 取多个返回值中的第几个

//带参数标签的函数 from 标签 参数标签的使用能够让一个函数在调用时更有表达力,更类似自然语言,并且仍保持了函数内部的可读性以及清晰的意图。

func greetLab(person:String, from hometown:String) -> String{

    return "\(person) from hometown is \(hometown)"
}
print(greetLab(person: "Bill", from: "shenzhen"))

//忽略参数标签 在参数标签前加 _ 可在调用的时候可参数标签
func greetNotLab(_ person:String, age:Int) -> String{

    return "\(person) age is \(age)"
}
print(greetNotLab("Mary", age: 18))

//带默认参数值得函数
func someFunction(paramerWithoutDefaultValue:String, paramerHaveDefaultValue:Int = 12){
    // 如果你在调用时候不传第二个参数,parameterWithDefault 会值为 12 传入到函数体中。
}
someFunction(paramerWithoutDefaultValue: "Hello",paramerHaveDefaultValue: 6)


//函数可以带有可变个数的参数,这些参数在函数内表现为数组的形式 一个函数最多可拥有一个可变参数
func changefunc(scores:Int...) ->Int{
    var sum = 0
    for scrore in scores {
        
        sum += scrore
    }
    return sum/scores.count
}

let changeCall = changefunc(scores:90,80,40)
print(changeCall)

//输入输出参数 inout 如果你想要一个函数可以修改参数的值,并且想要在这些修改在函数调用结束后仍然存在,那么就应该把这个参数定义为输入输出参数
func swipTowInts(other: inout Int, another: inout Int){

    let  tempInt = other
    other = another
    another = tempInt
}
var a = 3
var f = 10
swipTowInts(other: &a, another: &f)
print("someInt is now \(a), and anotherInt is now \(f)")


//函数可以嵌套。被嵌套的函数可以访问外侧函数的变量,你可以使用嵌套函数来重构一个太长或者太复杂的函数。
func nest() ->Int{

    var count = 0
    let y = 5
    //在函数内嵌套一个函数，该函数可使用外部函数的变量和常量
    func add(){
        count = y+5
    }
    //调用函数
    add()
    return count
}
print(nest())


//函数嵌套
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    return backward ? stepBackward : stepForward
}

var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

//将函数作为返回参数
func callbackfunc() -> ((Int) -> Int){

    func addOne(number:Int) -> Int{
    
        return number + 1
    }
    return addOne
}
var callback = callbackfunc()
 print(callback(11))

//将函数当成参数传入 (Int) -> Bool传入函数的写法
func hasAnyMatches(numberCount:[Int], conditon:(Int) -> Bool) -> Bool{

    for x in numberCount {
        
        if conditon(x) {
            return true
        }
    }
    return false

}
func parameterfunc(number:Int) -> Bool{

    return number > 10
}

let arr = [5,1,4,10]

var callResult = hasAnyMatches(numberCount: arr, conditon: parameterfunc)
print(callResult)

////////闭包 闭包表达式参数 可以是 in-out 参数,但不能设定默认值
let names = ["Jack","Mary","Bill","Alex","Even"]
var reversedNames = names.sorted(by: {(s1:String,s2:String) -> Bool in return s1>s2})
print(reversedNames)










