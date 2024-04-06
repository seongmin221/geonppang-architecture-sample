//
//  CoordinatorType.swift
//  GeonPpangArchitectureSample
//
//  Created by 이성민 on 3/18/24.
//

import Foundation

/// Coordinator에 있는 Flow의 종류를 리스트업 해두는 곳
/// 계층에 맞게 case 로 분류

enum CoordinatorFlowType {
    case app
    case auth
    case filter
    case home, bakeryList, myPage
    case search, bakeryDetail
}
