import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
    carthage: [],
    swiftPackageManager: [
        .remote(
            url: "https://github.com/ReactiveX/RxSwift.git",
            requirement: .upToNextMajor(from: "6.5.0")
        )
    ],
    platforms: [.iOS]
)

//MARK: Tuist의 Dependencies에서 SwiftPackageManager를 사용하는 방법
/// Dependencies.swift로 Package들을 resolve 하려면 tuist fetch -> tuist generate 해줘야 함
