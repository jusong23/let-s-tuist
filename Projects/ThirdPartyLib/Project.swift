import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "ThirdPartyLib",
    product: .framework,
    packages: [],
    dependencies: [
        .SPM.RxSwift,
        .SPM.RxCocoa,
        .SPM.RxRelay
    ]
)

//MARK: Xcode에서 다룰 수 있는 그 SPM

/*
 import ProjectDescription
 import ProjectDescriptionHelpers

 let project = Project.makeModule(
     name: "ThirdPartyLib",
     product: .framework,
     packages: [],
     dependencies: [
         .external(name: "RxSwift"),
         .external(name: "RxCocoa")
     ]
 )
*/

//MARK: 2번째 방법인 Tuist의 SPM과 거의 비슷합니다 SPM이 Carthage로 바뀐거라고 보시면 됩니다. 단 Carthage가 설치되어있어야 합니다.

/*
 // Project.swift
 import ProjectDescription
 import ProjectDescriptionHelpers

 let project = Project.makeModule(
     name: "ThirdPartyLib",
     product: .framework,
     packages: [],
     dependencies: [
         .framework(path: .relativeToRoot("Frameworks/RxSwift.framework"))
     ]
 )
*/

//MARK: 로컬의 프레임워크를 직접 참조하여 의존성을 추가하는 방식
