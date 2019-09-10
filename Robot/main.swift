//
//  main.swift
//  Robot
//
//  Created by Rodolphe Schnetzer on 04/09/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

var tableau = [Robot]()

var pierre = Robot(name: "pierre")


tableau.append(pierre)


for presentation in tableau {
    presentation.introdiuce()
}

pierre.randomMove(times: 5)
pierre.introdiuce()
