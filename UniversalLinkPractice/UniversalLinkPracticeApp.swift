//
//  UniversalLinkPracticeApp.swift
//  UniversalLinkPractice
//
//  Created by 강성찬 on 2024-07-16.
//

import SwiftUI

struct UniversalLinkPracticeApp: App {
    @StateObject var deepLinkManager: DeepLinkManager = DeepLinkManager()
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(deepLinkManager)
                .onOpenURL(perform: { url in
                    if deepLinkManager.checkDeepLink(url: url) {
                        print("DeepLink OK!")
                    } else {
                        print("SomeThing Wrong!!")
                    }
                    //Text결과 checkDeepLink를 한번 실행해 줘야 Deeplink가 정상동작한다.
                })
        }
    }
}
