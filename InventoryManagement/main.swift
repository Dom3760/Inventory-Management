//
//  main.swift
//  InventoryManagement
//
//  Created by StudentAM on 1/16/24.
//

import Foundation

var itemsInCart: [String] = []
let password1 = "1234"


func startScreen ()
{
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
        else
        {
            startScreen()
        }
    }
}

func addItem()
{
    print ("What would you like to add to your cart?")
    print("1.Cereal \(productQuantitys["cereal"]!)X(left) Price: $\(productPrices["cereal"]!)")
    print("2.Pancakes \(productQuantitys["pancakes"]!)X(left) Price: $\(productPrices["pancakes"]!)")
    print("3.Milk \(productQuantitys["milk"]!)X(left) Price: $\(productPrices["milk"]!)")
    print("4.Chips \(productQuantitys["chips"]!)X(left) Price: $\(productPrices["chips"]!)")
    print("5. Nevermind")
    
    if let input1 = readLine()
    {
        if input1 == "1"
        {
            print ("how many would you like to add?")
            if let input1 = Int(readLine()!)
            {
                if input1 > 0
                {
                    productQuantitys["cereal"]! -= input1
                    quantityInCart ["cereal"]! += input1
                    print("Your current total is: $\(price())")
                    sleep(2)
                    startScreen()
                }else
                {
                    print ("please enter a valid number")
                    sleep(2)
                    addItem()
                }
            }
        }
        
        if input1 == "2"
        {
            print ("how many would you like to add?")
            if let input1 = Int(readLine()!)
            {
                if input1 > 0
                {
                    productQuantitys["pancakes"]! -= input1
                    quantityInCart ["pancakes"]! += input1
                    
                    print("Your current total is: $\(price())")
                    sleep(2)
                    startScreen()
                }else
                {
                    print ("please enter a valid number")
                    sleep(2)
                    addItem()
                }
            }
        }
        
        if input1 == "3"
        {
            print ("how many would you like to add?")
            if let input1 = Int(readLine()!)
            {
                if input1 > 0
                {
                    productQuantitys["milk"]! -= input1
                    quantityInCart ["milk"]! += input1
                    print("Your current total is: $\(price())")
                    sleep(2)
                    startScreen()
                }else
                {
                    print ("please enter a valid number")
                    sleep(2)
                    addItem()
                }
            }
        }
        if input1 == "4"
        {
            print ("how many would you like to add?")
            if let input1 = Int(readLine()!)
            {
                if input1 > 0
                {
                    productQuantitys["chips"]! -= input1
                    quantityInCart ["chips"]! += input1
                    print("Your current total is: $\(price())")
                    sleep(2)
                    startScreen()
                }else
                {
                    print ("please enter a valid number")
                    sleep(2)
                    addItem()
                }
            }
        }
        
        if input1 == "5"
        {
            print("Ok")
            sleep(2)
            startScreen()
        }else
        {
            print("Enter a valid number")
            sleep(2)
            addItem()
        }
        
        
    }
}

func removeItem()
{
    print ("what do you want to remove?")
    print ("Current Items:")
    print("1.Cereal \(quantityInCart["cereal"]!)X Price: $\(productPrices["cereal"]!)")
    print("2.Pancakes \(quantityInCart["pancakes"]!)X Price: $\(productPrices["pancakes"]!)")
    print("3.Milk \(quantityInCart["milk"]!)X Price: $\(productPrices["milk"]!)")
    print("4.Chips \(quantityInCart["chips"]!)X Price: $\(productPrices["chips"]!)")
    print("5. Nevermind")
    if let selectedItem  = Int(readLine()!)
    {
        if selectedItem == 1
        {
            if quantityInCart["pancakes"]! == 0
            {
                print("You dont have any of these in your cart.")
                sleep(1)
                startScreen()
            }
            
            print ("how much would you like to remove?")
            if let input1 = Int(readLine()!)
            {
                if input1 > quantityInCart["pancakes"]!
                {
                    print("You cant remove more than you have.")
                    sleep(1)
                    removeItem()
                }
                
                if input1 > 0
                {
                    productQuantitys["cereal"]! += input1
                    quantityInCart ["cereal"]! -= input1
                    print("Your current total is: $\(price())")
                    sleep(2)
                    startScreen()
                }else
                {
                    print ("please enter a valid number")
                    sleep(2)
                    removeItem()
                }
            }
        }
        
        if selectedItem == 2
        {
            if quantityInCart["pancakes"]! == 0
            {
                print("You dont have any of these in your cart.")
                sleep(1)
                startScreen()
            }
            
            print ("how much would you like to remove?")
            if let input1 = Int(readLine()!)
            {
                if input1 > quantityInCart["pancakes"]!
                {
                    print("You cant remove more than you have.")
                    sleep(1)
                    removeItem()
                }
                
                if input1 > 0
                {
                    productQuantitys["pancakes"]! += input1
                    quantityInCart ["pancakes"]! -= input1
                    print("Your current total is: $\(price())")
                    sleep(2)
                    startScreen()
                }else
                {
                    print ("please enter a valid number")
                    sleep(2)
                    removeItem()
                }
            }
        }
        if selectedItem == 3
        {
            if quantityInCart["milk"]! == 0
            {
                print("You dont have any of these in your cart.")
                sleep(1)
                startScreen()
            }
            
            print ("how much would you like to remove?")
            if let input1 = Int(readLine()!)
            {
                if input1 > quantityInCart["milk"]!
                {
                    print("You cant remove more than you have.")
                    sleep(1)
                    removeItem()
                }
                
                if input1 > 0
                {
                    productQuantitys["milk"]! += input1
                    quantityInCart ["milk"]! -= input1
                    print("Your current total is: $\(price())")
                    sleep(2)
                    startScreen()
                }else
                {
                    print ("please enter a valid number")
                    sleep(2)
                    removeItem()
                    
                }
            }
        }
        if selectedItem == 4
        {
            if quantityInCart["chips"]! == 0
            {
                print("You dont have any of these in your cart.")
                sleep(1)
                startScreen()
            }
            
            print ("how much would you like to remove?")
            if let input1 = Int(readLine()!)
            {
                if input1 > quantityInCart["chips"]!
                {
                    print("You cant remove more than you have.")
                    sleep(1)
                    removeItem()
                }
                if input1 > 0
                {
                    productQuantitys["chips"]! += input1
                    quantityInCart ["chips"]! -= input1
                    print("Your current total is: $\(price())s")
                    sleep(2)
                    startScreen()
                }else
                {
                    print ("please enter a valid number")
                    sleep(2)
                    removeItem()
                }
            }
        }
        if selectedItem == 5
        {
            print("Ok")
            sleep(2)
            startScreen()
        }else
        {
            print("Enter a valid number")
            sleep(2)
            removeItem()
        }
    }
}

func checkAvailability()
{
    print("Here is the current stock and price")
    print("1.Cereal \(productQuantitys["cereal"]!)X(left) Price: $\(productPrices["cereal"]!)")
    print("2.Pancakes \(productQuantitys["pancakes"]!)X(left) Price: $\(productPrices["pancakes"]!)")
    print("3.Milk \(productQuantitys["milk"]!)X(left) Price: $\(productPrices["milk"]!)")
    print("4.Chips \(productQuantitys["chips"]!)X(left) Price: $\(productPrices["chips"]!)")
    sleep(2)
    print("Would you like to return to start screen?(y/n)")
    if let return1 = readLine()
    {
        if return1 == "y"
        {
            startScreen()
        }
        if return1 == "n"
        {
            print("Ok,continue to look.")
            checkAvailability()
        }
    }

}

func adminMenu()
{
    var adminMenuChoice = "0"
    print("Hello what is your password?")
    
    if let userPassword = readLine(){
        if(userPassword == password1){
            while adminMenuChoice != "4"
            {
                print("welcome Admin, what would you like to do?")
                print("1. Restock inventory")
                print("2. Generate report")
                print("3. Check number of items")
                print("4. Quit admin menu")
                
                if let adminMenuChoice = Int(readLine()!)
                {
                    if adminMenuChoice == 1
                    {
                        print("what would you like to restock?")
                        print("1. Cereal \(productQuantitys["cereal"]!)X(left)")
                        print("2. Pancakes \(productQuantitys["pancakes"]!)X(left)")
                        print("3. Milk \(productQuantitys["milk"]!)X(left)")
                        print("4. Chips \(productQuantitys["chips"]!)X(left)")
                        print("5. All items")
                        print("6. Nevermind")
                        if let input2 = Int(readLine()!)
                        {
                            if input2 == 1
                            {
                                print("How many would you like to restock?")
                                if let input1 = Int(readLine()!)
                                {
                                    productQuantitys["cereal"]! += input1
                                    print("Current stock:\(productQuantitys["cereal"]!)")
                                    
                                }else
                                {
                                    print("Error")
                                    continue
                                }
                            }
                            
                            if input2 == 2
                            {
                                print("How many would you like to restock?")
                                if let input1 = Int(readLine()!)
                                {
                                    productQuantitys["pancakes"]! += input1
                                    print("Current stock:\(productQuantitys["pancakes"]!)")
                                    
                                }else
                                {
                                    print("Error")
                                    continue
                                }
                            }
                            
                            if input2 == 3
                            {
                                print("How many would you like to restock?")
                                if let input1 = Int(readLine()!)
                                {
                                    productQuantitys["milk"]! += input1
                                    print("Current stock:\(productQuantitys["milk"]!)")
                                }else
                                {
                                    print("Error")
                                    continue
                                }
                            }
                            
                            if input2 == 4
                            {
                                print("How many would you like to restock?")
                                if let input1 = Int(readLine()!)
                                {
                                    productQuantitys["chips"]! += input1
                                    print("Current stock:\(productQuantitys["chips"]!)")
                                    continue
                                    
                                }else
                                {
                                    print("Error")
                                    continue
                                }
                            }
                            
                            if input2 == 5
                            {
                                print("How many would you like to restock?")
                                if let quantityToRestock = Int(readLine()!)
                                {
                                    productQuantitys["cereal"]! += quantityToRestock
                                    productQuantitys["pancakes"]! += quantityToRestock
                                    productQuantitys["milk"]! += quantityToRestock
                                    productQuantitys["chips"]! += quantityToRestock
                                    print("1. Cereal \(productQuantitys["cereal"]!)X(left)")
                                    print("2. Pancakes \(productQuantitys["pancakes"]!)X(left)")
                                    print("3. Milk \(productQuantitys["milk"]!)X(left)")
                                    print("4. Chips \(productQuantitys["chips"]!)X(left)")
                                    sleep (2)
                                }
                            }
                            
                            if input2 == 6
                            {
                                print("ok")
                                continue
                            }
                        }
                    }
                    if adminMenuChoice == 2
                    {
                        let stock = productQuantitys["cereal"]! + productQuantitys["pancakes"]! + productQuantitys["milk"]! + productQuantitys["chips"]!
                        print("Generating Report...")
                        sleep(1)
                        print("1. Cereal \(productQuantitys["cereal"]!)X(left)")
                        print("2. Pancakes \(productQuantitys["pancakes"]!)X(left)")
                        print("3. Milk \(productQuantitys["milk"]!)X(left)")
                        print("4. Chips \(productQuantitys["chips"]!)X(left)")
                        print("total stock:\(stock)")
                        print("total sales:\(totalSales)")
                        
                        print("would you like to go back to the menu (y/n)?")
                        if let input1 = readLine()
                        {
                            if input1 == "y"
                            {
                                continue
                            }
                            if input1 == "n"
                            {
                                print("Ok, you have 5 seconds.")
                                sleep(5)
                                continue
                            }
                            else
                            {
                                continue
                            }
                        }
                        
                    }
                    if adminMenuChoice == 3
                    {
                        print("1.Cereal \(productQuantitys["cereal"]!)X(left) Price: $\(productPrices["cereal"]!)")
                        print("2.Pancakes \(productQuantitys["pancakes"]!)X(left) Price: $\(productPrices["pancakes"]!)")
                        print("3.Milk \(productQuantitys["milk"]!)X(left) Price: $\(productPrices["milk"]!)")
                        print("4.Chips \(productQuantitys["chips"]!)X(left) Price: $\(productPrices["chips"]!)")
                        sleep(2)
                        continue
                    }
                    if adminMenuChoice == 4
                    {
                        startScreen()
                    }
                    else
                    {
                        continue
                    }
                    }
                }
            }
        }
        else{
        print("Incorrect password! Leaving Admin menu!")
        return
        }
    }
    
//    print("Hello, What is your password?")
//    if let password2 = readLine()
//    {
//        if password1 == password2
//        {
//            
//                if input2 == 4
//                {
//                    print("Thank you admin!")
//                    startScreen()
//                }
//            }
//
//        }
//        else
//        {
//            print ("Your password is incorrect")
//            sleep(2)
//            startScreen()
//        }
//    }
//}

func price() -> Double {
    var finalPrice = 0.0

    finalPrice += Double(quantityInCart["cereal"]!) * productPrices["cereal"]!
    finalPrice += Double(quantityInCart["pancakes"]!) * productPrices["pancakes"]!
    finalPrice += Double(quantityInCart["milk"]!) * productPrices["milk"]!
    finalPrice += Double(quantityInCart["chips"]!) * productPrices["chips"]!

    return finalPrice
}

var totalSales = 0.0
var costAfterTax = 0.0
func checkout ()
{
    print("calculating total...")
    sleep(1)
    costAfterTax = (price() * 0.0925) + price()
    print("Items in cart")
    print("1.Cereal \(quantityInCart["cereal"]!)X Price: $\(productPrices["cereal"]!)")
    print("2.Pancakes \(quantityInCart["pancakes"]!)X Price: $\(productPrices["pancakes"]!)")
    print("3.Milk \(quantityInCart["milk"]!)X Price: $\(productPrices["milk"]!)")
    print("4.Chips \(quantityInCart["chips"]!)X Price: $\(productPrices["chips"]!)")
    print("Price before tax:\(price())")
    print("price after tax(9.25%): \(costAfterTax)")
    sleep(1)
    print("would you like to checkout now?(y/n)")
    if let input1 = readLine()
    {
        if input1 == "y"
        {
            totalSales += costAfterTax
            print("Thank you for your purchase.")
            quantityInCart["cereal"]! = 0
            quantityInCart["pancakes"]! = 0
            quantityInCart["milk"]! = 0
            quantityInCart["chips"]! = 0
            startScreen()
            
        }
        if input1 == "n"
        {
            print("Ok, please take your time.")
            startScreen()
        }
        else
        {
            print("Error")
            startScreen()
        }
    }
    
}


var productQuantitys = [String: Int]()
productQuantitys["cereal"] = 87
productQuantitys["pancakes"] = 38
productQuantitys["milk"] = 65
productQuantitys["chips"] = 100

var productPrices = [String: Double]()
productPrices["cereal"] = 5.65
productPrices["pancakes"] = 10.99
productPrices["milk"] = 6.00
productPrices["chips"] = 4.59

var quantityInCart = [String: Int]()
quantityInCart["cereal"] = 0
quantityInCart["pancakes"] = 0
quantityInCart["milk"] = 0
quantityInCart["chips"] = 0

startScreen()
