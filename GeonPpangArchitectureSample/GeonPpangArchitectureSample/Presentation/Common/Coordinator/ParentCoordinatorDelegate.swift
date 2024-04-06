//
//  ParentCoordinatorDelegate.swift
//  GeonPpangArchitectureSample
//
//  Created by 이성민 on 4/6/24.
//

import Foundation

protocol ParentCoordinatorDelegate {
    func childDidFinish(child: CoordinatorType)
}
