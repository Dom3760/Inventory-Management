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

var itemsInCart: [] = []

func startScreen ()
{
    print("What would you like to do?:")
    print("1.Add item to cart")
    print("2.Remove item from cart")
    print("3.Check item availability in stock")
    print("4.Access Admin Menu")
    print("5.Checkout")

    if var input1 = readLine()
    {
        if input1 == "1"
        {
            addItem()
        }
        if input1 == "2"
        {
            removeItem()
        }
        if input1 == "3"
        {
            checkAvailability()
        }
        if input1 == "4"
        {
            adminMenu()
        }
        if input1 == "5"
        {
            checkout()
        }
    }
}

func addItem()
{
    print ("What would you like to add to your cart?")
    print("1.Cereal \(cereal.quantity)X Price: \(cereal.price)")
    print("2.Pancakes \(cereal.quantity)X Price: \(cereal.price)")
    print("3.Milk \(cereal.quantity)X Price: \(cereal.price)")
    print("4.Chips \(cereal.quantity)X Price: \(cereal.price)")
    print("5. Nevermind")
    if var input1 = readLine()
    {
        if input1 == "1"
        {
            print ("how many would you like to add?")
            if var input1 = readLine()
            {
                
            }
        }
        if input1 == "2"
        {
            print ("how many would you like to add?")
            if var input1 = readLine()
            {
                
            }
        }
        if input1 == "3"
        {
            print ("how many would you like to add?")
            if var input1 = readLine()
            {
                
            }
        }
        if input1 == "4"
        {
            print ("how many would you like to add?")
            if var input1 = readLine()
            {
                
            }
        }
        if input1 == "5"
        {
            startScreen()
        }
    }
}
var number = 0
func removeItem()
{
    print ("what do you want to remove?")
    print ("Current Items:")
    for i in itemsInCart.length
    {
        var number = i + 1
        print (number+"." + itemsInCart + itemsInCart[i].quantity)
    }
    print ((itemsInCart.length+1)+"."+"return")
    if var input1 = readLine()
    {
        var idex = number - 1
        if input1 == itemsInCart
        {
         print ("how many do you want to remove")
        }
        else
        {
            print ("error")
            removeItem()
        }
    }
}

func checkAvailability()
{
    number = 0
    print("what would you like to check?")
    for i in listItems.length
    {
        number = i + 1
        print(number+"." , listItems)
    }
}

func adminMenu()
{
    var password1 = "1234"
    print("Hello, What is your password?")
    if var pasword2 = readLine()
    {
        if password1 == password2
        {
            print("welcome Admin, what would you like to do?")
            print("1.")
            print("2.")
            print("3.")
            print("4.")
            print("5.")
        }
    }
}

func checkout()
{
    var finalPrice = 0
    for i in itemsInCart.length
    {
        finalPrice += itemsInCart[i].quantity * itemsInCart[i].price
    }
    print ("Your current price is $\(finalPrice)")
}




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
var listItems: [var] = [cereal,pancakes,milk,chips]

//print("What would you like to do?:")
//print("1.Add item to cart")
//print("2.Remove item from cart")
//print("3.Check item availability in stock")
//print("4.Access Admin Menu")
//print("5.Checkout")
//
//if var input1 = readLine()
//{
//    if input1 == "1"
//    {
//        print ("What would you like to add to your cart?")
//        print("1.Cereal \(cerealQuantity)")
//        print("2.Pancakes")
//        print("3.Milk")
//        print("4.Chips")
//        print("5. Nevermind")
//        if var input1 = readLine()
//        {
//            if input1 == "1"
//            {
//            
//            }
//        }
//        
//        
//    }
//    if input1 == "2"
//    {
//        print ("What would you like to remove from the cart?")
//    }
//    
////    var cerealQuantity: Int = cereal.quantity
//    if input1 == "3"
//    {
//        print("This is what is currently in stock. would you like to look at any?")
//        print("1.Cereal \(cerealQuantity)")
//        print("2.Pancakes")
//        print("3.Milk")
//        print("4.Chips")
//    }
//    
//    if input1 == "4"
//    {
//        print("what is your password?")
//    }
//    
//    if input1 == "5"
//    {
//        
//    }
//}
