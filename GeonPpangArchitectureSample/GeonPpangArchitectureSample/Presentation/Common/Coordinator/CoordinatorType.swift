//
//  Coordinator.swift
//  GeonPpangArchitectureSample
//
//  Created by 이성민 on 3/18/24.
//

import UIKit

/// 추상화된 기본 Coordinator protocol을 선언하는 부분
/// Coordinator에 기본적으로 필요한 부분들을 선언

protocol CoordinatorType: AnyObject {
    var parent: ParentCoordinatorDelegate? { get set }
    var navigationController: UINavigationController { get set }
    var children: [CoordinatorType] { get set }
    var flowType: CoordinatorFlowType { get }
    
    func start()
    func finish()
}

extension CoordinatorType {
    func finish() {
        children.removeAll()
        parent?.childDidFinish(child: self)
    }
}
