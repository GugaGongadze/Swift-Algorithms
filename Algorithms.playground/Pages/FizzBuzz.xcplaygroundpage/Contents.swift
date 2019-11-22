func fizzBuzz(_ n: Int) -> [String] {
  var result: [String] = []
  
  for num in 1...n {
    switch num {
    case let i where i % 5 == 0 && i % 3 == 0:
        result.append("FizzBuzz")
    case let i where i % 5 == 0:
        result.append("Buzz")
    case let i where i % 3 == 0:
        result.append("Fizz")
    default:
        result.append(String(num))
    }
  }
  
  return result
}

fizzBuzz(15)
