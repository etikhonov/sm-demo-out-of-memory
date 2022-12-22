# Демо интеграции SM-камеры с потреблением памяти до OutOfMemory Exception

## [Проект в ./cap-sm](./cap-sm) - Capacitor Plugin с интеграцией камеры

IOS реализация в [`./cap-sm/ios`](./cap-sm/ios)

- [`Plugin/ExamplePlugin.swift`](./cap-sm/ios/Plugin/ExamplePlugin.swift) - "Вход", инициализация VC созданного для запуска камеры

- [`Plugin/MainPluginVC.swift`](./cap-sm/ios/Plugin/MainPluginVC.swift) - запуск камеры
- [`Plugin/MainPlugin.storyboard`](./cap-sm/ios/Plugin/MainPlugin.storyboard) - storyboard к MainPluginVC

## [Проект в ./demo-app](./demo-app) - Capacitor App с использованием Plugin'a cap-sm

- [`components/HelloWorld.vue`](./demo-app/src/components/HelloWorld.vue) - Кнопка для запуска камеры/Plugin'a
