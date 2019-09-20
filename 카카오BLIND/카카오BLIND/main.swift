let n1 = "(()())()"
let m1 = "(()())()"

let n2 = ")("
let m2 = "()"

let n3 = "()))((()"
let m3 = "()(())()"

var stack = [Character]()



func 균형있는괄호(_ c : [Character]) -> Bool {
    if c.count%2 == 1 { return false }
    if c.isEmpty { return true }
    var 왼쪽수 = 0
    var 오른쪽수 = 0
    c.forEach { if $0 == "(" { 오른쪽수 += 1 } else { 왼쪽수 += 1 } }
    return 왼쪽수 == 오른쪽수
}

func 올바른괄호(_ c : [Character]) -> Bool {
    if c.count%2 == 1  { return false }
    if c.isEmpty { return true }
    var stack = [Character]()
    
    c.forEach {
        if $0 == "(" {
            stack.append($0)
        }
        else {
            _ = stack.popLast()
        }
    }
    return stack.isEmpty
}



func 올바른괄호만들기(_ c: [Character]) -> [Character] {
    if 올바른괄호(c) { return c }
    var c2 = c
    var v = [Character]()
    while let c = c2.popLast() {
        v.append(c)
        if 균형있는괄호(c2) && 균형있는괄호(v){
            let newU = c2.map { $0 == "(" ? ")" : "(" }.map{Character($0)}
            return newU + v
        }
    }
    return 올바른괄호만들기(c)
}
let a = 올바른괄호만들기(n3.map { $0 as Character })
print(a)
