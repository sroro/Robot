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
    enum direction : CaseIterable{
        case nord,est,sud,ouest
    }
    
    init(name: String) {
        self.name = name
    }
    
    
    
    //  fonction move() permet de choisir et la direction et le nbr de case ou l'on souhaite se deplacer
    func move () {
        
        //permet de choisir le nombre aleatoire de la vitesse
        let vitesse = Int.random(in: 0 ..< 3)
        
        // permet de choisir aleatoire la direction
        let randomDirection = direction.allCases.randomElement()!
        //      la condition if else permet de determiner le nbr max de case  ou l'on peu se deplacer
        if vitesse <= 3 {
            
            switch randomDirection {
            case .nord:
                position.x += vitesse
                print("Je me déplace de \(position)")
            case .sud:
                position.x -= vitesse
                print("Je me déplace de \(position)")
            case .est:
                position.y += vitesse
                print("Je me déplace de \(position)")
            case .ouest:
                position.y -= vitesse
                print("Je me déplace de \(position)")
            }
        } else {
            print("Choisir un chiffre entre 0 et 3")
        }
    }
    
    func introdiuce() {
        print("Bonjour je m'appelle \(name). J'ai \(life) points de vie et je me déplace à \(vitesse) cases par seconde. Je suis à la case de coordonnées \(position) ")
    }
    
}

