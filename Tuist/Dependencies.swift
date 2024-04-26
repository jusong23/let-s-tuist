import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .remote(url: "https://github.com/airbnb/lottie-ios.git", requirement: .upToNextMajor(from: "3.5.0")),
            .remote(url: "https://github.com/uber/needle.git", requirement: .upToNextMajor(from: "0.19.0")),
            .remote(url: "https://github.com/Moya/Moya.git", requirement: .upToNextMajor(from: "15.0.3")),
            .remote(url: "https://github.com/Quick/Nimble.git", requirement: .upToNextMajor(from: "10.0.0")),
            .remote(url: "https://github.com/Quick/Quick.git", requirement: .upToNextMajor(from: "5.0.0"))
        ],
        baseSettings: .settings(
            configurations: [
                .debug(name: .dev),
                .debug(name: .stage),
                .release(name: .prod)
            ]
        )
    )
)

//MARK: Tuist의 Dependencies에서 SwiftPackageManager를 사용하는 방법
/// Dependencies.swift로 Package들을 resolve 하려면 tuist fetch -> tuist generate 해줘야 함
