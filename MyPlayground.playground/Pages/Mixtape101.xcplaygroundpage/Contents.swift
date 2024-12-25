//: [Previous](@previous)

import Foundation

/*
  Make a Mixtape 101
  Theme: 🥳
*/

print(".------------------------.")
print("| Viva piñata - - 90 min |")
print("|       __       |")
print("|    (  )|).....|(  )    |")
print("|    ()|)__|()    |")
print("|    __    |")
print("|__/_.o__o.\__|")


var mixtape = [String]()
mixtape += ["The Notorious B.I.G. - Big Poppa",
            "The Notorious B.I.G. - Hypnotize",
            "Backstreet Boys - I Want It That Way",
            "Radiohead - Creep",
            "The Police - Every Breath You Take",
            "Goo Goo Dolls – Iris",
            "Aerosmith - I Don't Want to Miss a Thing",
            "Oasis - Wonderwall",
            "Green Day - Boulevard Of Broken Dreams"]

// print(mixtape.count)
mixtape.remove(at: (mixtape.count - 1))
mixtape.insert("AC/DC - Thunderstruck", at: 0)


// for track in mixtape {
//   print(track)
// }


let midpoint = mixtape.count / 2
print("Side A:")
for i in 0..<midpoint { // This goes from 0 to (but not included) midpoint value, e.g. => 0..<4
    print("\(i + 1). \(mixtape[i])")
}

print("\nSide B:")
for i in midpoint..<mixtape.count {
    print("\(i + 1). \(mixtape[i])")
}

print("https://open.spotify.com/album/1TjTnGb9hUp1czJ80FyKHU")
