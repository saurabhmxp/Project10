//
//  Person.swift
//  Project10
//
//  Created by Saurabh Agarwal on 11/10/22.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
