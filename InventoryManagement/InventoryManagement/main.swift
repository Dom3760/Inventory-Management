//
//  main.swift
//  InventoryManagement
//
//  Created by StudentAM on 1/16/24.
//

//let queue = DispatchQueue.global()
//
//for i in 1 ... 100000 {
//    queue.async {
//        usleep(useconds_t(0.5 * 1_000_000))
//        print("Hello, World!")
//    }
//}


//class Car {
//    var brand: String
//    var model: String
//
//    init(brand: String, model: String) {
//        self.brand = brand
//        self.model = model
//    }
//}
//
//// Creating an instance of the Car class
//let myCar = Car(brand: "Toyota", model: "Camry")
import Foundation

class cereal {
    var price: Double = 5.49
    var quantity: Int = 100
}

class pancakes {
    var price: Double = 7.99
    var quantity: Int = 100
}

class milk {
    var price: Double = 5.99
    var quantity: Int = 100
}

class chips {
    var price: Double = 6.53
    var quantity: Int = 100
}
var listItems: [any <#type#>] = [cereal,pancakes,milk,chips]


print("What would you like to do?:")
print("1.Add item to cart")
print("2.Remove item from cart")
print("3.Check item availability in stock")
print("4.Access Admin Menu")
print("5.Checkout")

if let input1 = readLine()
{
    if input1 == "1"
    {
        print ("What would you like to add to your cart?")
        print("1.Add item to cart")
        print("2.Remove item from cart")
        print("3.Check item availability in stock")
        print("4.Access Admin Menu")
        print("5.Checkout")
    }
    if input1 == "2"
    {
        print ("What would you like to remove from the cart?")
    }
    
    var cerealQuantity: Int = cereal.quantity
    if input1 == "3"
    {
        print("This is what is currently in stock. would you like to look at any?")
        print("1.Cereal \(cerealQuantity)")
        print("2.Pancakes")
        print("3.Milk")
        print("4.Chips")
    }
    
    if input1 == "4"
    {
        print("what is your password?")
    }
    
    if input1 == "5"
    {
        
    }
}
