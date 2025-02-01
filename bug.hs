```haskell
import Data.List (sort)

main :: IO ()
main = do
  let numbers = [1, 5, 2, 8, 3]
  let sortedNumbers = sort numbers
  print sortedNumbers -- Output: [1,2,3,5,8]

  let strings = ["banana", "apple", "cherry"]
  let sortedStrings = sort strings
  print sortedStrings -- Output: ["apple","banana","cherry"]

  let tuples = [(1,"a"), (3,"c"), (2,"b")]
  let sortedTuples = sort tuples
  print sortedTuples -- Output: [(1,"a"),(2,"b"),(3,"c")]
```