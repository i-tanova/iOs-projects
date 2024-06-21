
let dayOfTheWeek = "Monday"
let averageTemperature = 16
var dailyTemperature = 15  // camel case
print("Today is \(dayOfTheWeek)")
print ("Day of the week \(dayOfTheWeek)")
print("The temperature on \(dayOfTheWeek) is \(dailyTemperature)")
dailyTemperature = 18
print("The temperature is \(dailyTemperature)")
var averageForMonday = averageTemperature

let levelScore = 10
var gameScore = 0
gameScore += levelScore
print("Game score \(gameScore)")
var levelBonusScore = 10.0
levelBonusScore = 20
print ("the level bonus score is \(levelBonusScore)")
gameScore += Int(levelBonusScore)
print ("Final game score is \(gameScore)")
let levelLowestScore = 50
let levelHighesetScore = 100
let numOfLevels = 10
let averageScore = Double((levelHighesetScore - levelLowestScore)) / Double(numOfLevels)
print("Average \(averageScore)")

let day = "Monday"
print("Today is \(day)")
let hour = "6"
let minutes = "15"
let period = "PM"
var time = hour + ":" + minutes + " " + period
print("Time is \(time)")
let timezone = "PST"
time += " \(timezone)"
print("Now is \(time)")
let shortDay = day.prefix(3)
print("\(shortDay)")


let freeApp = true

if(freeApp){
    print("Free")
}
let morningTemp = 70
let eveningTemp = 80
if(morningTemp < eveningTemp){
    print("\(morningTemp)")
}else{
    print("\(eveningTemp)")
}

let temperatureDegree = "Fahrenheit"
if(temperatureDegree == "Fahrenheit"){
    print("we use fahrenheit")
}else{
    print("Celsius")
}
if(temperatureDegree == "Fahrenheit" || temperatureDegree == "Celsius"){
    print("we use fahrenheit")
}else{
    print("Something is wrong")
}

switch(temperatureDegree){
case "Fahrenheit": print("US")
case "Celsius": print("Europe")
default: print("Unknown")
}

let numberPlate = "WW87GP"
for character in numberPlate {
  print("character is = \(character)")
}
var firstDice = 0
var secondDice = 0
repeat {
  firstDice = Int.random(in: 1...6)
  secondDice = Int.random(in: 1...6)
} while firstDice != secondDice
print("You rolled a double \(firstDice).")

let levels = 10
let freeLevels = 4
let bonusLevel = 3
for i in 1...levels{
    if(i == bonusLevel){
        print("Bonus level")
        continue
    }
    print("Current level \(i)")
    
    if i > freeLevels {
        print("Free levels \(freeLevels)")
        break
    }
        
}

var password = "Hello"
if let code = Int(password){
    print("\(code)")
}else{
    print("Invalid")
}

var password2 = "Hello"
let accessCode: Int
if let code2 = Int(password2){
    accessCode = code2
}else{
    accessCode = 1111
}
print("\(accessCode)")

let firstPassword = "sdaf"
let secondPassword = "sdf"
let firstAccessCode:Int
let secondAccessCode:Int
let firstPasscode: Int, secondPasscode: Int

if let firstPasscode = Int(firstPassword){
    firstAccessCode = firstPasscode
}else{
    firstAccessCode = 0
}
if let secondPasscode = Int(firstPassword){
    secondAccessCode = secondPasscode
}else{
    secondAccessCode = 0
    print("Err Second passcode")
}
print("First \(firstAccessCode) and second \(secondAccessCode)")

// arrays
var arr:[String] = ["aa", "bb"]
arr[1] = "cc"
arr.count
arr.append("dd")
arr.insert("ee", at: 0)
arr.remove(at:0)

// exercise
var levelScores:[Int] = []
if(levelScores.isEmpty){
    print("Welcome new player")
}
let firstScore = 10
levelScores.append(firstScore)
print(levelScores[0])
let firstBonus = 40
levelScores[0]+=firstBonus
print(levelScores[0])
let freeLevelsScores = [20, 30]
levelScores.append(freeLevelsScores[0])
levelScores.append(freeLevelsScores[1])
let freeLevelsGame = 3
if(levelScores.count == freeLevelsGame){
    levelScores = []
    print("You have to buy the game in order to play its full version.")
}
// combine two arrays
var a = [1,2]
var b = [2,3]
let c = a+b
print(c)
// mix of types array
var arrMix:[Any] = [4]
arrMix.append(3.33)
arrMix.append("Mix")
print(arrMix)

// touples
var touple = ("Carrot", 1, true)
var (veggie, number, boolean) = touple
var veg = (vegType: "Carrot", quantity: 3, inStock: true)
print(veg.vegType)
print(veg.0)
// ignore some values
let (_, quantity, _) = veg

// exercise
var credentials = (password: "", passcode: -123)
if(credentials.password.isEmpty || credentials.passcode < 0){
    print("Invalid credentials!")
}else{
    print("The username is \(credentials.password) and the passcode is…\(credentials.passcode)")
}
let fullCredentials = (password:"123", passcode:123)
if(fullCredentials.password.isEmpty || fullCredentials.passcode < 0){
    print("Invalid credentials!")
}else{
    print("\(fullCredentials.password)  \(fullCredentials.password)")
}
/// Dictionaries
var travel: Dictionary<String, Int> = ["Rich": 500, "Peter": 400]
var travel2 = ["Roch": 500, "Poor":5]
// Exercise
//Step 1: Create a dictionary
var weeklyTemperatures = Dictionary<String, Int>()
// solution: var weeklyTemperatures:[String, Int] = [:]
// Step 2: Set the daily temperatures in the dictionary
weeklyTemperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95]
// Step 3.1: Update the first day’s temperature
weeklyTemperatures["Monday"]! += 5
print("\(weeklyTemperatures["Monday"]!)")
// use optional binding to evaluate if the dictionary contains the key and value for Sunday
if let wednesdayTemp = weeklyTemperatures["Sunday"]{
    
}else{
    weeklyTemperatures["Sunday"] = 100
    print(" Sunday is hot \(weeklyTemperatures["Sunday"]!)")
}
//Step 5: Reset the dictionary for a new week
if(weeklyTemperatures.count == 7){
    for data in weeklyTemperatures{
        print("day \(data.key) temp \(data.value)")
    }
    weeklyTemperatures = [:]
    for data in weeklyTemperatures{
        print("day \(data.key) temp \(data.value)")
    }
}

// Arrays and Dictionary exercises
//creating a constant for the level scores array
let levelScores2 = [10, 20, 30]
//Use a for in loop with the enumerated() method
for data in levelScores2.enumerated(){
    print("index:\(data.offset) score: \(data.element)")
}
for (level, score) in levelScores2.enumerated(){
    print("Lvel:\(level + 1) Score: \(score)")
}
/// use addition assignment operator inside the for in loop.

var gameScore2 = 0
for score in levelScores2{
    gameScore2 += score
}
print(gameScore2)
//Create a constant for the dictionary that will store the daily temperatures of the current week.
let weatherForecast = ["Monday": 30, "Tuesday": 40, "Wednesday": 20]
//Use a for in loop to iterate
for (day, temperature) in weatherForecast{
    print("Day \(day) Temperature \(temperature)")
}
//Sequence the weather forecast accurately
let days = ["Monday", "Tuesday", "Wednesday"]
let temperature = [20, 30, 40]
print("------")
//Use a for in loop with a closed range to go through all the elements in the range.
for index in 0...days.count - 1 {
    print("Day: \(days[index]) Temperature \(temperature[index])")
}

// Functions exercise
//Step 1: Define a function
var goldBar = 0
func unlockTreasureChest(inventory: Int) -> Int{
    inventory + 100
}

goldBar = unlockTreasureChest(inventory: goldBar)
print("Treasure is \(goldBar)")
goldBar = unlockTreasureChest(inventory: goldBar)
print("Treasure is \(goldBar)")
goldBar = unlockTreasureChest(inventory: goldBar)
print("Treasure is \(goldBar)")

// Exercise: Practice writing succinctly expressive functions
var goldBar2 = 0
//func incrementInventory(inventory: Int) -> Int {
//  return inventory + 100
//}
//Step 3: Add a second parameter
//func incrementInventory(inventory: Int, amount: Int = 150) -> Int {
//  return inventory + amount
//}
//print(incrementInventory(inventory: 2))
//Step 6: Add an argument label
func incrementInventory(inventory: Int, by amount: Int = 150) -> Int {
  return inventory + amount
}
print(incrementInventory(inventory: 2, by: 100))

//Step 7: Omit an argument label
func incrementInventory2(_ inventory: Int, _ amount: Int = 150) -> Int {
    return inventory + amount
}
    
print(incrementInventory2(2))

//Step 8: Make an in-out parameter
func incrementInventory3(_ inventory: inout Int, by amount: Int = 100) {
    inventory += amount
}
var number1 = 3
print(incrementInventory3(&number1))
print(number1)
print("----")

incrementInventory3(&goldBar2)
print(goldBar2)
incrementInventory3(&goldBar2)
print(goldBar2)
incrementInventory3(&goldBar2)
print(goldBar2)
incrementInventory3(&goldBar2, by: 300)
print(goldBar2)
incrementInventory3(&goldBar2, by: 50)
print(goldBar2)

// closures
func sort(s1: String, s2: String) -> Bool{
    return s1 < s2
}
let letters = ["H", "A", "C", "B"]
let sorted = letters.sorted(by: sort)
print(sorted)

let sorted2 = letters.sorted(by: {(s1:String, s2:String) ->Bool in return s1 < s2})
let sorted3 = letters.sorted(by: {s1, s2 in return s1 < s2})
let sorted4 = letters.sorted(by: {$0 < $1})

print(sorted3)

// exerices closure
var goldBarMay = 0
//Step 3: Set the constant to a closure
let unlockTreasureChest = {(inventory: Int) -> Int in
return inventory + 100}
goldBarMay = unlockTreasureChest(goldBarMay)
print(goldBarMay)
// Set the constant equal to a closure with:
// An in-out parameter called inventory of type Int.
let unlockTreasureChest2 = {(inventory: inout Int) in
return inventory += 100}
unlockTreasureChest2(&goldBarMay)
print(goldBarMay)

//Use functions and closures together for completion handler

var goldBarsThursday = 100
func spendTenGoldBars(from inventory: inout Int, completion: (Int) -> Void){
    inventory -= 10
    completion(inventory)
}
print("You had \(goldBarsThursday) gold bars.")
spendTenGoldBars(from: &goldBarsThursday, completion: {(goldBarsThursday) -> Void in
    print("After opeartion \(goldBarsThursday)")})

// Structs exercies
// Declare a struct to hold table booking information
struct TableReservation {
    var name: String
    let tableNumber: Int
    
    mutating func updateBooking(name: String){
        self.name = name
    }
}

var johnBooking = TableReservation(name: "Jhon", tableNumber: 34)
print(johnBooking)
johnBooking.updateBooking(name: "Maria")
print(johnBooking)

// Classes exercise
// Create a class to represent a local file with two stored properties
class LocalFile{
    let name: String
    let fileExtension: String
    //Create a computed property that returns a full file name
    var fullFileNаме: String{
        name + fileExtension
    }
    // Declare an init method to prepare class for initialization later
    init(name: String, fileExtension: String) {
        self.name = name
        self.fileExtension = fileExtension
    }
}
// Create a class instance to verify that it works as expected
let instance = LocalFile(name: "Name", fileExtension: ".txt")
print(instance.fullFileNаме)

///Final project: The bank account simulator
///Step 1: Start the virtual bank system interface
class BankAccountSetup{
    //Step 2: Create a property for the bank account type
    var accountType = ""
    
    func greeting(){
        print("Welcome to your virtual bank system. ")
    }
    
    func onboard(){
        print("What kind of account would you like to open?")
        print("1. Debit account")
        print("2. Credit account")
    }
    
    //Step 3: Create the bank account type based on user input
    func takeUserInput(numberPadKey: Int){
        print("The selected option is \(numberPadKey)")
        switch numberPadKey {
        case 1 : accountType = "debit"
        case 2: accountType = "credit"
        default: print("Invalid input: \(numberPadKey)")
            return
        }
        print("You have opened a \(accountType) account.")
    }
}

var instanceBankAccount = BankAccountSetup()
//Step 4: Welcoming customer with a virtual bank system instance
instanceBankAccount.greeting()
// Step 5: Generating user input in the repeat while loop
repeat {
    instanceBankAccount.onboard()
    instanceBankAccount.takeUserInput(numberPadKey: Int.random(in: 0...3))
} while instanceBankAccount.accountType.isEmpty

struct BankAccount{
    var debitBalance = 0
    var creditBalance = 0
    let creditLimit = 100
    //computed property
    var debitBalanceInfo: String {
         "Debit balance: $\(debitBalance)"
    }
    var availableCredit: Int {
        creditLimit + creditBalance
    }
    var creditBalanceInfo: String {
        "Available credit: $\(availableCredit)"
    }
    
    //Omit the argument label of the amount parameter.
    //mutating method - alter property
    mutating func debitDeposit(_ amount: Int){
        debitBalance += amount
        print("Deposited $ \(amount). \(debitBalanceInfo)")
    }
    
    mutating func creditDeposit(_ amount: Int){
        creditBalance += amount
        print("Credit $ \(amount). \(creditBalanceInfo)")
        if creditBalance == 0 {
            print("Paid off credit balance.")
        }else if(creditBalance > 0){
            print("Overpaid credit balance.")
        }
    }
    
    mutating func debitWithdraw(_ amount: Int){
        if(amount > debitBalance){
            print( "Insufficient fund to withdraw $\(amount). \(debitBalanceInfo )")
        }else{
            debitBalance -= amount
            print("Credit withdraw: $\(amount). \(debitBalanceInfo)" )
        }
    }
    
    mutating func creditWithdraw(_ amount: Int){
        if(amount > availableCredit){
            print( "Insufficient credit to withdraw $\(amount). \(creditBalanceInfo )")
        }else{
            creditBalance -= amount
            print("Credit withdraw: $\(amount). \(creditBalanceInfo)" )
        }
    }
}
var bankAccount = BankAccount()
print("\(bankAccount.debitBalanceInfo)")
bankAccount.debitDeposit(100)
bankAccount.debitWithdraw(20)
bankAccount.debitWithdraw(81)
print("\(bankAccount.creditBalanceInfo)")
bankAccount.creditWithdraw(101)
bankAccount.creditWithdraw(100)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(50)


//Part 3: Manage the bank account
class VirtualBankSystem2 {
    var accountType = ""
    var isOpened = true
    func welcomeCustomer() {
        print("Welcome to your virtual bank system.")
    }
    func onboardCustomerAccountOpening() {
        print("What kind of account would you like to open?")
        print("1. Debit account")
        print("2. Credit account")
    }
    func makeAccount(numberPadKey: Int) {
        print("The selected option is \(numberPadKey).")
        switch numberPadKey {
        case 1:
            accountType = "debit"
        case 2:
            accountType = "credit"
        default:
            print("Invalid input: \(numberPadKey)")
            return
        }
        print("You have opened a \(accountType) account.")
    }
    
    func moneyTransfer(transferType:String, transferAmount: Int, bankAccount: inout BankAccount2){
        switch transferType{
        case "withdraw":
            if accountType == "credit"{
                bankAccount.creditWithdraw(transferAmount)
            }else if accountType == "debit" {
                bankAccount.debitWithdraw(transferAmount)
            }
        case "deposit":
            if accountType == "credit"{
                bankAccount.creditDeposit(transferAmount)
            }else if accountType == "debit" {
                bankAccount.debitDeposit(transferAmount)
            }
        default:
            break
        }
    }
    
    func checkBalance(bankAccount: BankAccount2){
        switch accountType{
        case "credit":
            print("Credit info \(bankAccount.creditBalanceInfo)")
        case "debit":
            print("Credit info \(bankAccount.debitBalanceInfo)")
        default:
            break
        }
    }
}

struct BankAccount2 {
    var debitBalance = 0
    var creditBalance = 0
    let creditLimit = 100
    var debitBalanceInfo: String {
        "Debit balance: $\(debitBalance)"
    }
    var availableCredit: Int {
        creditLimit + creditBalance
    }
    var creditBalanceInfo: String {
        "Available credit: $\(availableCredit)"
    }
    mutating func debitDeposit(_ amount: Int) {
        debitBalance += amount
        print("Debit deposit: $\(amount). \(debitBalanceInfo)")
    }
    mutating func debitWithdraw(_ amount: Int) {
        if amount > debitBalance {
            print("Insufficient funds to withdraw $\(amount). \(debitBalanceInfo)")
        } else {
            debitBalance -= amount
            print("Debit withdraw: $\(amount). \(debitBalanceInfo)")
        }
    }
    mutating func creditDeposit(_ amount: Int) {
        creditBalance += amount
        print("Credit deposit: $\(amount). \(creditBalanceInfo)")
        if creditBalance == 0 {
            print("Paid off credit balance.")
        } else if creditBalance > 0 {
            print("Overpaid credit balance.")
        }
    }
    mutating func creditWithdraw(_ amount: Int) {
        if amount > availableCredit {
            print("Insufficient credit to withdraw $\(amount). \(creditBalanceInfo)")
        } else {
            creditBalance -= amount
            print("Credit withdraw: $\(amount). \(creditBalanceInfo)")
        }
    }
}

let virtualBankSystem = VirtualBankSystem2()
virtualBankSystem.welcomeCustomer()

repeat {
    virtualBankSystem.onboardCustomerAccountOpening()
    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.makeAccount(numberPadKey: numberPadKey)
} while virtualBankSystem.accountType == ""

let transferAmount = 50
print("Transfer amount: $\(transferAmount)")
var bankAccount2 = BankAccount2()
repeat{
    print("What would you like to do?")
    print("1. Check bank account")
    print("2. Withdraw money")
    print("3. Deposit money")
    print("4. Close the system")
    
    
    var option = Int.random(in: 1...5)
    switch option {
    case 1: virtualBankSystem.checkBalance(bankAccount: bankAccount2)
    case 2: virtualBankSystem.moneyTransfer(transferType: "withdraw", transferAmount: transferAmount, bankAccount: &bankAccount2)
    case 3: virtualBankSystem.moneyTransfer(transferType: "deposit", transferAmount: transferAmount, bankAccount: &bankAccount2)
    case 4:
        virtualBankSystem.isOpened = false
        print("The system is closed")
    default:
        break
    }
} while virtualBankSystem.isOpened

