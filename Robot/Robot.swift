//
//  Robot.swift
//  Robot
//
//  Created by Rodolphe Schnetzer on 04/09/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

class Robot {
    var name : String
    var life = 100
    var vitesse = 3
    var position = (x:0,y:0)
    enum direction {
        case nord,est,sud,ouest
    }
    init(name: String, direction: direction) {
    self.name = name
    }
    
    func introdiuce() {
        print("Bonjour je m'appelle \(name). J'ai \(life) points de vie et je me déplace à \(vitesse) cases par seconde. Je suis à la case de coordonnées \(position) ")
    }
    
    func move(direction: direction){
    print("je me deplace vers \(direction)")
    
}
}
