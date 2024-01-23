//
//  main.swift
//  InventoryManagement
//
//  Created by StudentAM on 1/16/24.
//

import Foundation

var itemsInCart: [String] = []

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
                var counter = 0
                var cerealQ = input1
                productQuantitys["cereal"]! -= input1
                for i in itemsInCart.indices
                {
                    if itemsInCart[i] == "cereal"
                    {
                        counter += 1
                    }
                }
                if counter == 0
                {
                    itemsInCart.append("cereal")
                }
            }
        }
        if input1 == "2"
        {
            print ("how many would you like to add?")
            if let input1 = readLine()
            {
                var pancakesQ = input1
            }
        }
        if input1 == "3"
        {
            print ("how many would you like to add?")
            if let input1 = readLine()
            {
                var milkQ = input1
            }
        }
        if input1 == "4"
        {
            print ("how many would you like to add?")
            if let input1 = readLine()
            {
                var chipsQ = input1
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
    for i in itemsInCart.indices
    {
        var number: Int = i + 1
        print ("\(number). \(itemsInCart[i])")
    }
    print ("\(number+1). Return")
    if var input2 = readLine()
    {
        var idex = (Int(number) - 1)
        if input2 in itemsInCart
        {
            print ("how many do you want to remove")
            if var input1 = readLine()
            
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
    for i in productQuantitys
    {
        number = i + 1
        print(number+"." , listItems)
    }
}

func adminMenu()
{
    var password1 = "1234"
    print("Hello, What is your password?")
    if var password2 = readLine()
    {
        if password1 == password2
        {
            print("welcome Admin, what would you like to do?")
            print("1. Restock inventory")
            print("2. Generate report")
            print("3. Check number of items")
            print("4. Quit admin menu")

        }
        else
        {
            print ("Your password is incorrect")
            startScreen()
        }
    }
}

func checkout()
{
    var finalPrice = 0
    for i in itemsInCart.count
    {
        finalPrice += itemsInCart[i].quantity * itemsInCart[i].price
    }
    print ("Your current price is $\(finalPrice)")
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

startScreen()
