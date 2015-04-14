# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(id: 1, title: 'Проект 1')
Project.create(id: 2, title: 'Проект 2')
Project.create(id: 3, title: 'Проект 3')

Component.create(id: 1, title: 'Компонент 1', project_id: 1, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
Component.create(id: 2, title: 'Компонент 2', project_id: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
Component.create(id: 3, title: 'Компонент 3', project_id: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
Component.create(id: 4, title: 'Компонент 4', project_id: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
Component.create(id: 5, title: 'Компонент 5', project_id: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
Component.create(id: 6, title: 'Компонент 6', project_id: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
Component.create(id: 7, title: 'Компонент 7', project_id: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
Component.create(id: 8, title: 'Компонент 8', project_id: 3, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")

CurrentState.create(id: 1, project_id: 1, component_id: 1)

TestObject.create(id: 1, name: 'Объект тестирования 1', version: '24.11', component_id: 1)
TestObject.create(id: 2, name: 'Объект тестирования 2', version: '1.33.16', component_id: 2)
TestObject.create(id: 3, name: 'Объект тестирования 3', version: '1.33.16', component_id: 3)
TestObject.create(id: 4, name: 'Объект тестирования 4', version: '1.33.16', component_id: 4)
TestObject.create(id: 5, name: 'Объект тестирования 5', version: '1.33.16', component_id: 5)
TestObject.create(id: 6, name: 'Объект тестирования 6', version: '1.33.16', component_id: 6)
TestObject.create(id: 7, name: 'Объект тестирования 7', version: '1.33.16', component_id: 7)
TestObject.create(id: 8, name: 'Объект тестирования 8', version: '1.33.17', component_id: 2)
TestObject.create(id: 9, name: 'Объект тестирования 9', version: '1.33.17', component_id: 3)
TestObject.create(id: 10, name: 'Объект тестирования 10', version: '1.33.17', component_id: 4)
TestObject.create(id: 11, name: 'Объект тестирования 11', version: '1.33.17', component_id: 5)
TestObject.create(id: 12, name: 'Объект тестирования 12', version: '1.33.17', component_id: 6)
TestObject.create(id: 13, name: 'Объект тестирования 13', version: '1.33.17', component_id: 7)

Suite.create(id: 1, title: 'Комплект 1', priority: 'Высокий', component_id: 1)
Suite.create(id: 2, title: 'Комплект 2', priority: 'Высокий', component_id: 1)
Suite.create(id: 3, title: 'Комплект 3', priority: 'Высокий', component_id: 1)
Suite.create(id: 4, title: 'Комплект 4', priority: 'Высокий', component_id: 1)
Suite.create(id: 5, title: 'Комплект 5', priority: 'Высокий', component_id: 1)
Suite.create(id: 6, title: 'Комплект 6', priority: 'Высокий', component_id: 1)
Suite.create(id: 7, title: 'Комплект 7', priority: 'Высокий', component_id: 1)
Suite.create(id: 8, title: 'Комплект 8', priority: 'Высокий', component_id: 1)
Suite.create(id: 9, title: 'Комплект 9', priority: 'Высокий', component_id: 1)
Suite.create(id: 10, title: 'Комплект 10', priority: "Высокий", component_id: 8)
Suite.create(id: 11, title: 'Комплект 11', priority: 'Высокий', component_id: 8)
Suite.create(id: 12, title: 'Комплект 12', priority: 'Высокий', component_id: 8)

CheckList.create(id: 1, title: "Чек-лист 1", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 2, title: "Чек-лист 2", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 3, title: "Чек-лист 3", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 4, title: "Чек-лист 4", priority: "Высокий", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 5, title: "Чек-лист 5", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 6, title: "Чек-лист 6", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 7, title: "Чек-лист 7", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 8, title: "Чек-лист 8", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 9, title: "Чек-лист 9", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 10, title: "Чек-лист 10", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 11, title: "Чек-лист 11", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 12, title: "Чек-лист 12", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)

CheckList.create(id: 13, title: "Чек-лист 13", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)
CheckList.create(id: 14, title: "Чек-лист 14", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 1)

CheckList.create(id: 15, title: "Чек-лист 15", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 16, title: "Чек-лист 16", priority: "Высокий", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 17, title: "Чек-лист 17", priority: "Высокий", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 18, title: "Чек-лист 18", priority: "Высокий", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 19, title: "Чек-лист 19", priority: "Низкий", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 20, title: "Чек-лист 20", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 21, title: "Чек-лист 21", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 22, title: "Чек-лист 22", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 23, title: "Чек-лист 23", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 24, title: "Чек-лист 24", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 25, title: "Чек-лист 25", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 26, title: "Чек-лист 26", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 27, title: "Чек-лист 27", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 28, title: "Чек-лист 28", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 29, title: "Чек-лист 29", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)
CheckList.create(id: 30, title: "Чек-лист 30", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 2)

CheckList.create(id: 31, title: "Чек-лист 31", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 3)
CheckList.create(id: 32, title: "Чек-лист 32", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 3)
CheckList.create(id: 33, title: "Чек-лист 33", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 3)
 
CheckList.create(id: 44, title: "Чек-лист 34", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 4)
CheckList.create(id: 45, title: "Чек-лист 35", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 4) 
CheckList.create(id: 51, title: "Чек-лист 36", priority: "Высокий", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 5)

CheckList.create(id: 52, title: "Чек-лист 37", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 6)
CheckList.create(id: 53, title: "Чек-лист 38", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 6)
CheckList.create(id: 54, title: "Чек-лист 39", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 6)

CheckList.create(id: 55, title: "Чек-лист 40", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 7)

CheckList.create(id: 56, title: "Чек-лист 41", priority: "Высокий", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 8)
CheckList.create(id: 57, title: "Чек-лист 42", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 8)

CheckList.create(id: 58, title: "Чек-лист 43", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 9)
CheckList.create(id: 59, title: "Чек-лист 44", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 9)
CheckList.create(id: 60, title: "Чек-лист 45", priority: "Средний", tags: "авто", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 9)

CheckList.create(id: 61, title: "Чек-лист 46", priority: "Высокий", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 10)
CheckList.create(id: 62, title: "Чек-лист 47", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 11)
CheckList.create(id: 63, title: "Чек-лист 48", priority: "Высокий", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 11)
CheckList.create(id: 64, title: "Чек-лист 49", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 11)
CheckList.create(id: 77, title: "Чек-лист 50", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 12)
CheckList.create(id: 78, title: "Чек-лист 51", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 12)
CheckList.create(id: 79, title: "Чек-лист 52", priority: "Средний", tags: "rest", description: "Шаг 1, Шаг2, Шаг 3, Результат", suite_id: 12)

ExecutionTypes.create(id: 1, name: 'Регрессионное тестирование')
ExecutionTypes.create(id: 2, name: 'Полное функциональное тестирование')
ExecutionTypes.create(id: 3, name: 'Smoke тестирование')
ExecutionTypes.create(id: 4, name: 'Нагрузочное тестирование')
ExecutionTypes.create(id: 5, name: 'Тестирование новой функциональности')

Browser.create(id: 1, name: 'Google Chrome')
Browser.create(id: 2, name: 'Firefox')
Browser.create(id: 3, name: 'Safari')
Browser.create(id: 4, name: 'Opera')
Browser.create(id: 5, name: 'Internet Explorer')
Browser.create(id: 6, name: 'Не используется')

OperatingSystem.create(id: 1, name: 'Windows')
OperatingSystem.create(id: 2, name: 'Mac OS')
OperatingSystem.create(id: 3, name: 'Ubuntu')
OperatingSystem.create(id: 4, name: 'Linux Mint')
OperatingSystem.create(id: 5, name: 'SUSE Linux Enterprise')
OperatingSystem.create(id: 6, name: 'CentOS')
OperatingSystem.create(id: 7, name: 'Red Hat Enterprise Linux')
OperatingSystem.create(id: 8, name: 'iOS')
OperatingSystem.create(id: 9, name: 'Android')