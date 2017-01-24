//First store each player in a dictionary collection.
let joeSmith = ["Name": "Joe Smith",
                "Height(inches)": "42",
                "Soccer Exp": "YES",
                "Guaridan Name(s)": "Jim and Jan Smith"]


let jillTanner = ["Name": "Jill Tanner",
                  "Height(inches)": "36",
                  "Soccer Exp": "YES",
                  "Guaridan Name(s)": "Ciara Tanner"]


let billBon = ["Name": "Bill Bon",
               "Height(inches)": "43",
               "Soccer Exp": "YES",
               "Guaridan Name(s)": "Sara and Jenny Bon"]


let evaGordon = ["Name": "Eva Gordon",
                 "Height(inches)": "45",
                 "Soccer Exp": "NO",
                 "Guaridan Name(s)": "Wendy and Mike Gordon"]


let mattGill = ["Name": "Matt Gill",
                "Height(inches)": "40",
                "Soccer Exp": "NO",
                "Guaridan Name(s)": "Charles and Sylvia Gill"]


let kimmyStein = ["Name": "Kimmy Stein",
                  "Height(inches)": "41",
                  "Soccer Exp": "NO",
                  "Guaridan Name(s)": "Bill and Hillary Stein"]


let sammyAdams = ["Name": "Sammy Adams",
                  "Height(inches)": "45",
                  "Soccer Exp": "NO",
                  "Guaridan Name(s)": "Jeff Adams"]


let karlSaygan = ["Name": "Karl Saygan",
                  "Height(inches)": "42",
                  "Soccer Exp": "YES",
                  "Guaridan Name(s)": "Heather Bledsoe"]


let suzaneGreenberg = ["Name": "Suzane Greenberg",
                       "Height(inches)": "44",
                       "Soccer Exp": "YES",
                       "Guaridan Name(s)": "Henrietta Dumas"]


let salDali = ["Name": "Sal Dali",
               "Height(inches)": "41",
               "Soccer Exp": "NO",
               "Guaridan Name(s)": "Gala Dali"]


let joeKavalier = ["Name": "Joe Kavalier",
                   "Height(inches)": "39",
                   "Soccer Exp": "NO",
                   "Guaridan Name(s)": "Sam and Elaine Kavalier"]


let benFinkelstein = ["Name": "Ben Finkelstein",
                      "Height(inches)": "44",
                      "Soccer Exp": "NO",
                      "Guaridan Name(s)": "Aaron and Jill Finkelstein"]


let diegoSoto = ["Name": "Diego Soto",
                 "Height(inches)": "41",
                 "Soccer Exp": "YES",
                 "Guaridan Name(s)": "Robin and Sarika Soto"]


let chloeAlaska = ["Name": "Chloe Alaska",
                   "Height(inches)": "47",
                   "Soccer Exp": "NO",
                   "Guaridan Name(s)": "David and Jamie Alaska"]


let arnoldWillis = ["Name": "Arnold Willis",
                    "Height(inches)": "43",
                    "Soccer Exp": "NO",
                    "Guaridan Name(s)": "Claire Willis"]


let phillipHelm = ["Name": "Phillip Helm",
                   "Height(inches)": "44",
                   "Soccer Exp": "YES",
                   "Guaridan Name(s)": "Thomas Helm and Eva Jones"]


let lesClay = ["Name": "Les Clay",
               "Height(inches)": "42",
               "Soccer Exp": "YES",
               "Guaridan Name(s)": "Wynonna Brown"]



let herschelKrustofski = ["Name": "Herschel Krustofski",
                          "Height(inches)": "45",
                          "Soccer Exp": "YES",
                          "Guaridan Name(s)": "Hyman and Rachel Krustofski"]


//Store each individual player in a single collection
let players = [joeSmith,
               jillTanner,
               billBon,
               evaGordon,
               mattGill,
               kimmyStein,
               sammyAdams,
               karlSaygan,
               suzaneGreenberg,
               salDali,
               joeKavalier,
               benFinkelstein,
               diegoSoto,
               chloeAlaska,
               arnoldWillis,
               phillipHelm,
               lesClay,
               herschelKrustofski]



//Time schedule for the letters
let teamSharksInfo = "March 17, 3pm"
let teamDragonsInfo = "March 17, 1pm"
let teamRaptorsInfo = "March 18, 1pm"




//Creating empty collection to prepare for player storage in each team
var teamSharks: [[String:String]] = []
var teamDragons: [[String:String]] = []
var teamRaptors: [[String:String]] = []


//seperating with exp or no exp
var experiencedPlayers: [[String:String]] = []
var inexperiencedPlayers: [[String:String]] = []


//sorting player with exp and no exp into player's array.
for player in players {
    
if player["Soccer Exp"] == "YES" {
    experiencedPlayers.append(player)
    
    
} else if player["Soccer Exp"] == "NO" {
    inexperiencedPlayers.append(player)
    }
    
}






//Sorting the height of players
var playersSortedHeight: [[String: String]]

playersSortedHeight = players.sorted { $0["Height(inches)"]! < $1 ["Height(inches)"]! }


//At first, the individual players are split into 2 groups, 1 with exp, and the other with no experience
//And then I sorted the height for both of them

//And now I'm creating a function to sort the players into 3 teams

func sortPlayers(array: [[String:String]]) {
    
    var index = 1
    var index2 = 1
    
  
    for player in playersSortedHeight {
        
        if player["Soccer Exp"] == "YES" {
            
            switch (index % 6) {
                
            case 1, 0: teamSharks.append(player)
                
            case 2, 5: teamDragons.append(player)
                
            case 3, 4: teamRaptors.append(player)

          
            default: break
            }
            
            index += 1
            
        }else if player["Soccer Exp"] == "NO" {
            
            switch (index2 % 6) {
                
            case 1, 0: teamRaptors.append(player)
                
            case 2, 5: teamDragons.append(player)
                
            case 3, 4: teamSharks.append(player)
                
            default: break
            }
            
            index2 += 1
        }
    }
}

sortPlayers(array: players)


teamSharks
teamDragons
teamRaptors


//Extra Credit: Calculate the average height of a team
func averageHeight(team: [[String:String]]) -> Double{
    
    var totalHeight = 0.0
    
    for player in team {
        
        totalHeight += Double(player["Height(inches)"]!)!
    }
    
    return totalHeight / Double(team.count)
}

print("The average for Team Dragons is \(averageHeight(team: teamDragons))")
print("The average for Team Raptors is \(averageHeight(team: teamRaptors))")
print("The average for Team Sharks is \(averageHeight(team: teamSharks))")

//Checks the height difference bettween two teams
func differenceBetweenTeams(team1: Double, team2: Double) -> Bool {
    
    var height = 0.0
    var inRange = false
    
    height = team1 - team2
    
    if height > 1.5 || height < -1.5 {
        
        inRange = false
        
    }else {
        
        inRange = true
    }
    
    return inRange
}



differenceBetweenTeams(team1: averageHeight(team: teamDragons), team2: averageHeight(team: teamRaptors))
differenceBetweenTeams(team1: averageHeight(team: teamDragons), team2: averageHeight(team: teamSharks))
differenceBetweenTeams(team1: averageHeight(team: teamRaptors), team2: averageHeight(team: teamSharks))



//Letters for the Parents and Guardians
for player in teamSharks {
    print("Congratulations \(player["Guaridan Name(s)"]!). Your child \(player["Name"]!) has soccer player for Team Sharks. The practice begins at \(teamSharksInfo). We are looking forward to have you and your child be part of this season. Thank you")
}
for player in teamDragons {
    print("Congratulations \(player["Guaridan Name(s)"]!). Your child \(player["Name"]!) has soccer player for Team Dragons. The practice begins at \(teamDragonsInfo). We are looking forward to have you and your child be part of this season. Thank you")
}
for player in teamRaptors {
    print("Congratulations \(player["Guaridan Name(s)"]!). Your child \(player["Name"]!) has soccer player for Team Raptors. The practice begins at \(teamRaptorsInfo). We are looking forward to have you and your child be part of this season. Thank you")
    
    
    
}