//: A Cocoa based Playground to present user interface

import AppKit
import PlaygroundSupport
//InsertionSort

func insertionSort(a: [Int]) -> [Int] {
    guard a.count > 1 else { return a } // Если есть 1 или меньше элементов, мы уже закончили
    
    var b = a // Сортируем массив , сделав копию массива A
    for i in 1..<b.count {
        // `i` указывает, где заканчивается сортированная куча и начинается несортированная куча
        
        var y = i // `y` - это индекс элемента, который мы сравниваем в отсортированной куче со следующим элементом в несортированной куче
        while y > 0 && b[y] < b[y - 1] {
            b.swapAt(y - 1, y)
            y -= 1
        }
    }
    return b // Возвращает отсортированную копию исходного массива
}
var numbers = [13,77, 20, 45, 2, 15, 0, 59, 5, 68, 51, 1, -1, 77]
insertionSort(a: numbers)
 
//--------------------------

//Наследование

class People { //родительский
    var name = "Tim"
    var lastName = "Shakirov"
    var fullName: String {
        return name + "" + lastName
    }
    func printMethod() -> String {
        return "Your name - "
    }
}
class Man: People{ //сабкласс
    override func printMethod() -> String {
        return super.printMethod() + "Kek" //переопределение метода для данного класса
    }
}
let people = People()
people.name
people.printMethod()
let man = Man()
man.name
man.printMethod()

//Инкапсуляция
class Girls {
    public var firstName = "Yana"//для публичных свойств, дает доступ вне модуля
    private var lastName = "Ismag"//Скрываем фамилию
    final func printHi() { //вносить изменения запрещаем
        print("Hi")
    }
}
class Boys: Girls {
   
    }


let boys = Boys()
//Полиморфизм
class Phone {
    func methodHi() {
        print("дзынь")
    }
}
class Smartphone: Phone {
    override func methodHi() {
        print("пампампам")
    }
}
class Plushka: Phone {
    override func methodHi() {
        print("пимпимпим")
    }
}
let phone = Phone()
let smartphone = Smartphone()
let plushka = Plushka()

var array = [phone, smartphone, plushka]//свойство объединять объекты для каких-то целей по общему признаку
//возможность объектов с одинаковой спецификацией иметь различную реализацию.
for obj in array {
    obj.methodHi()
}
//-----------------------------------
//BinaryTree
class TreeNode { //создаем бинарное дерево
    var value: Int
    var leftChild: TreeNode?
    var rightChild: TreeNode?
    
    init(_ value: Int,_ leftChild: TreeNode?,_ rightChild: TreeNode?) {
        self.value = value
        self.rightChild = rightChild
        self.leftChild = leftChild
    }
    
    func maxDepth(_ root: TreeNode?) -> Int{
        //Глубина узла - это количество ребер от узла до корневого узла дерева.
        //Корневой узел будет иметь глубину 0.
        if root == nil{
            return 0
        }
        else{
            let lDepth = maxDepth(root?.leftChild);
            let rDepth = maxDepth(root?.rightChild);
            
            if (lDepth > rDepth){
                return(lDepth+1)
            }
            else {
                return(rDepth+1)
            }
        }
    }
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        //Inorder - печатает левое дочернее значение, а затем текущее значение узла и последнее правое дочернее значение.
        if root == nil {
            return []
        }
        var result: [Int] = []
        result += inorderTraversal(root!.leftChild)
        result.append(root!.value)
        result += inorderTraversal(root!.rightChild)
        return result
    }
    //Мы рекурсивно вызываем левое верхнее поддерево, а затем печатаем значение узла, а затем вызываем самое правое поддерево.
    
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        //Preorder - печатает текущее значение узла, за которым следуют левые и правые дочерние значения.
        if root == nil {
            return []
        }
        var result: [Int] = []
        result.append(root!.value)
        result += preorderTraversal(root!.leftChild)
        result += preorderTraversal(root!.rightChild)
        return result
    }
    
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        //Postorder - печатает левые и правые дочерние значения, а затем текущее значение узла.
        if root == nil {
            return []
        }
        var result: [Int] = []
        result += postorderTraversal(root!.leftChild)
        result += postorderTraversal(root!.rightChild)
        result.append(root!.value)
        return result
    }
}
//добавляем узлы
let ten = TreeNode(10,nil,nil)
let one = TreeNode(0,nil,nil)
let third = TreeNode(3,nil,nil)
let fourth = TreeNode(4,nil,nil)
let five = TreeNode(5,ten,third)
let six = TreeNode(6,fourth,nil)
let root = TreeNode(2,five,six)
//Высота дерева начинается с корневого узла и равна глубине самого дальнего листа. Лист с самым длинным путем.
let t = TreeNode(0,nil,nil) //Чтобы получить высоту дерева
t.maxDepth(root) //3
print(t.inorderTraversal(root))
print(t.preorderTraversal(root))
print(t.postorderTraversal(root))



