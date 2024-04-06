//
//  AppCoordinator.swift
//  GeonPpangArchitectureSample
//
//  Created by 이성민 on 4/6/24.
//

import UIKit

/// App 전체의 코디네이터
/// DIContainer도 포함하고 있을 예정

final class AppCoordinator: AppCoordinatorType {
    
    var parent: ParentCoordinatorDelegate? = nil
    var navigationController: UINavigationController
    var children: [CoordinatorType] = []
    var flowType: CoordinatorFlowType { .app }
    
    private var tabBarController: UITabBarController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    /// LaunchScreen으로 시작해서, 로그인 여부 판단
    ///
    /// 로그인 되어 있다면, showMainFlow(), 로그인 되어 있지 않다면, showAuthFlow()
    func start() {}
    
    /// 로그인 되어 있지 않을 때, auth 관련 플로우를 시작하기 위한 함수
    func showAuthFlow() {}
    /// 로그인 되어 있을 때, 주된 플로우를 시작하기 위한 함수
    ///
    /// TabBar 관련 설정이 모두 이루어져야 함
    func showMainFlow() {}
}

extension AppCoordinator: ParentCoordinatorDelegate {
    /// child 플로우가 끝났을 때 실행
    ///
    /// AppCoordinator의 경우, 끝난 플로우에 따라 새로운 플로우 실행해야 합니다.
    /// 아무 플로우도 실행하고 있지 않으면 앱이 돌아가지 않기 때문입니다.
    /// 건빵에서는 mainFlow가 끝났으면 authFlow 시작,
    /// authFlow가 끝났으면 mainFlow 시작합니다
    func childDidFinish(child: any CoordinatorType) {}
}

// MARK: - TabBar 관련 설정
extension AppCoordinator {
    
}
