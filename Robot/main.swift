//
//  main.swift
//  Robot
//
//  Created by Rodolphe Schnetzer on 04/09/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

var tableau = [Robot]()

var pierre = Robot(name: "pierre", direction: .sud)
var paul = Robot(name: "paul", direction: .nord)
var jacques = Robot(name: "jacques", direction: .ouest)
var henri = Robot(name: "henri", direction: .est)

tableau.append(pierre)
tableau.append(paul)
tableau.append(jacques)
tableau.append(henri)

for presentation in tableau {
 presentation.introdiuce()
}

pierre.move(direction: .nord)
pierre.move(direction: .nord)
pierre.move(direction: .est)
