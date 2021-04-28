/* Microwave program that calculates cooking time
   when given the type and quantity of food.

   Sean McLeod
   2021/04/26
*/

let sub : Double = 1;
let pizza:Double = 0.75
let soup:Double = 1.75
let maxQuantity:Double = 3
let timeIncrement:Double = 0.5
var time:Double

// input
print("Are you heating sub, pizza, or soup?: ")
var type = readLine()

if (type! == "sub") || (type! == "pizza") || (type! == "soup") {
    if type! == "sub" {
        time = sub;
    } else if type == "pizza" {
        time = pizza;
    } else {
        time = soup;
    }

    // input
    print("how many \(type!)(s) are you cooking?(max:3): ")
    let quantityString = readLine()

    if let quantity = Double(quantityString!)  {
        if quantity <= maxQuantity && quantity > 0 {
          var loopCounter:Double = 1;
          var totalIncrement:Double = 0;
          /* use loop to determine how much time should be 
          incremented depending on the quantity */
          while loopCounter < quantity {
            totalIncrement += timeIncrement
            loopCounter += 1
          }
          // calculate
          time = time + time * totalIncrement
          // output
          print("\n")
          print("The total cook time is \(time) minutes")

        } else {
          print("The maximum quantity of food is 3")
        }

    } else {
      print("Please enter a number")
    }

} else {
  print("This microwave doesn't accept \(type!)")
}
