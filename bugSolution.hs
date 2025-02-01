```haskell
import Data.List (sortWith)
import Data.Ord (comparing)

main :: IO ()
main = do
  let numbers = [1, 5, 2, 8, 3]
  let sortedNumbers = sort numbers
  print sortedNumbers -- Output: [1,2,3,5,8]

  let strings = ["banana", "apple", "cherry"]
  let sortedStrings = sort strings
  print sortedStrings -- Output: ["apple","banana","cherry"]

  let tuples = [(1,"a"), (3,"c"), (2,"b")]
  -- Sort tuples based on the first element (integer)
  let sortedTuples = sortWith (comparing fst) tuples
  print sortedTuples -- Output: [(1,"a"),(2,"b"),(3,"c")]

  --Example with custom data type
data MyData = MyData { value :: Int, label :: String } deriving (Show, Eq)

instance Ord MyData where
  compare (MyData v1 _) (MyData v2 _) = compare v1 v2

let myDataList = [MyData 3 "c", MyData 1 "a", MyData 2 "b"]
let sortedMyDataList = sort myDataList
print sortedMyDataList
```