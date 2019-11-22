//
//  String.swift
//  Extensions
//
//  Created by 이동영 on 2019/11/21.
//  Copyright © 2019 이동영. All rights reserved.
//

import Foundation


extension String {
    
    var characters: [Character] {
        return self.map { $0 as Character }
    }
    
}
