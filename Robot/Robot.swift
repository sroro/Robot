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
    var vitesseMax = 3
    var position = (x:0,y:0)
    enum direction : CaseIterable{
        case nord,est,sud,ouest
    }
    
    init(name: String) {
        self.name = name
    }
    
    
    
    //  fonction move() permet de choisir et la direction et le nbr de case ou l'on souhaite se deplacer
    func move (direction: direction, vitesse: Int) {
        
        //      la condition if else permet de determiner le nbr max de case  ou l'on peu se deplacer
        if vitesse <= vitesseMax && vitesse >= 0 {
            
            switch direction {
            case .nord:
                position.y += vitesse
                print("Je me déplace de \(position)")
            case .sud:
                position.y -= vitesse
                print("Je me déplace de \(position)")
            case .est:
                position.x += vitesse
                print("Je me déplace de \(position)")
            case .ouest:
                position.x -= vitesse
                print("Je me déplace de \(position)")
            }
        } else {
            print("Choisir un chiffre entre 0 et 3")
        }
    }
    
    func introdiuce() {
        print("Bonjour je m'appelle \(name). J'ai \(life) points de vie et je me déplace à \(vitesseMax) cases par seconde. Je suis à la case de coordonnées \(position) ")
    }
    
    func randomMove(times: Int){
       
        //  boucle for avec times qui permet de determiner le nbr de fois que l'on souhaite appeler la func
        for _ in 1...times{
            
        //permet de choisir le nombre aleatoire de la vitesse
        let vitesse = Int.random(in: 0 ..< 3)
        
        // permet de choisir aleatoire la direction
        let randomDirection = direction.allCases.randomElement()!
        
        move(direction: randomDirection, vitesse: vitesse)
    
}
}
}
