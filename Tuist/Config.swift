import ProjectDescription

let config = Config(
    plugins: [
        .local(path: .relativeToRoot("Plugins/MyPlugin"))
    ]
)

// MARK: 5. Plugin
/*
 Tuist 기능을 확장하는 데 사용.
 Config.swift에서 Plugin을 정의한 후(Local, Remote로 가져올 수 있음)
 다른 곳에서 import하여 사용 가능
*/
