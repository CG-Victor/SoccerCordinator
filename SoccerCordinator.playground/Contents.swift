
import UIKit

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
                    "Height(inches)": "44",
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



//declaring time schedule for the letters
let teamSharksInfo = "March 17, 3pm"
let teamDragonsInfo = "March 17, 1pm"
let teamRaptorsInfo = "March 18, 1pm"




//Creating empty collection to prepare for player storage in each team
var teamSharks: [[String:String]] = []
var teamDragons: [[String:String]] = []
var teamRaptors: [[String:String]] = []



//For extra credit use
var teamDragonsData: [[String:String]] = []
var teamRaptorsData: [[String:String]] = []
var teamSharksData: [[String:String]] = []


//Sorting the height of players

var playersSortedHeight: [[String: String]]

playersSortedHeight = players.sorted { $0["Height(inches)"]! < $1 ["Height(inches)"]! }



//Assessing player experience and seperating the ones with experience and inexperience
for experiencedPlayer in players{
    
    if experiencedPlayer["Soccer Exp"] == "YES" {
        if teamSharks.count < teamDragons.count {
            teamSharks.append(experiencedPlayer)
        } else if teamDragons.count < teamRaptors.count {
            teamDragons.append(experiencedPlayer)
        } else {
            teamRaptors.append(experiencedPlayer)
        }
    }
}

for inexperiencedPlayer in players{
    
    if inexperiencedPlayer["Soccer Exp"] == "NO" {
        if teamSharks.count < teamDragons.count {
            teamSharks.append(inexperiencedPlayer)
        } else if teamDragons.count < teamRaptors.count {
            teamDragons.append(inexperiencedPlayer)
        } else {
            teamRaptors.append(inexperiencedPlayer)
        }
    }
}


//Executing the code
print(teamSharks)
print(teamDragons)
print(teamRaptors)



//Letters for the Parents and Guardians

for player in teamSharks {
    print("Congratulations \(player["Guaridan Name(s)"]!). Your child \(player["Name"]!) has soccer player for Team Sharks. The practice begins at \(teamSharksInfo). We are looking for to have you and your child play this season. Thank you")
}

for player in teamDragons {
    print("Congratulations \(player["Guaridan Name(s)"]!). Your child \(player["Name"]!) has soccer player for Team Dragons. The practice begins at \(teamDragonsInfo). We are looking for to have you and your child play this season. Thank you")
}


for player in teamRaptors {
    print("Congratulations \(player["Guaridan Name(s)"]!). Your child \(player["Name"]!) has soccer player for Team Raptors. The practice begins at \(teamRaptorsInfo). We are looking for to have you and your child play this season. Thank you")
}







