//
//  Metrics.swift
//  HW14
//
//  Created by  Евгений on 10.06.2022.
//

import Foundation
import UIKit

typealias layoutComposition = (countColumn: Int,
                               widthDimensionItem: Double,
                               heightDimensionGroup: Double,
                               bottomItem: CGFloat,
                               bottomSection: CGFloat
)

enum Metric: Int, CaseIterable {
    case myAlbum
    case commonAlbum
    
    func columnCountHeight() -> layoutComposition {
        switch self {
        case .myAlbum: return (countColumn: 2,
                               widthDimensionItem: 200.0,
                               heightDimensionGroup: 0.55,
                               bottomItem: 70,
                               bottomSection: 20
        )
        case .commonAlbum: return (countColumn: 1,
                                   widthDimensionItem: 206.0,
                                   heightDimensionGroup: 0.27,
                                   bottomItem: 70,
                                   bottomSection: 20
        )
        }
    }

}



