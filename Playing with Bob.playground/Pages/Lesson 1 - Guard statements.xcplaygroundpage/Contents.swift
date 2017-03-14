// Guard statement

func checkDrinkProgram() {
    let iCanDrink = true
    
    guard iCanDrink else {
        print("You can't drink")
        return
    }
    print("You may drink")
}

checkDrinkProgram()


// Unwrap optionals with else-if
var publicName: String? = "Bob"
var publicPhoto: String? = "the URL"
var publicAge: Int? = 21

// If nil, don't do anything
func unwrap() {
    if let name = publicName, let photo = publicPhoto, let age = publicAge {
        print("Your name is \(name). I see your dace right here, \(photo), and you are \(age)")
    } else {
        print("Something is missing")
    }
}

unwrap()

// Unwrap optionals with Guard
func safetyUnwrapUsingGuard() {
    guard let name = publicName, let photo = publicPhoto, let age = publicAge else {
        // if one or more optionals contain nil
        print("Something is missing")
        return
    }
    
    // All optionals contain non-nil
    print("Your name is \(name). I see your dace right here, \(photo), and you are \(age)")
}

safetyUnwrapUsingGuard()
