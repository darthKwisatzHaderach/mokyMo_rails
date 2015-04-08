# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(id: 1, title: 'Реестр структур ЭД')
Project.create(id: 2, title: 'АС ЭК')

Component.create(id: 1, title: 'Web-приложение', project_id: 1, description: 'Единый реестр структур электронных документов и сведений (реестр структур ЭД) - этоинформационный ресурс Евразийской экономической комиссии, включающий полный перечень утвержденных структур электронных документов и сведений в электронном виде, используемых при реализации информационного взаимодействия в интегрированной информационной системе внешней и взаимной торговли.')
Component.create(id: 2, title: 'АРМ члена Коллегии', project_id: 2)
Component.create(id: 3, title: 'АРМ презентации', project_id: 2)
Component.create(id: 4, title: 'АРМ управления заседанием', project_id: 2)
Component.create(id: 5, title: 'АРМ подготовки заседаний', project_id: 2)
Component.create(id: 6, title: 'АРМ Администратора', project_id: 2)
Component.create(id: 7, title: 'АРМ Руководителя', project_id: 2)

CurrentState.create(id: 1, project_id: 1, component_id: 1)

TestObject.create(id: 1, name: 'Реестр структур ЭД', version: '24.11', component_id: 1)
TestObject.create(id: 2, name: 'АРМ члена Коллегии', version: '1.33.16', component_id: 2)
TestObject.create(id: 3, name: 'АРМ презентации', version: '1.33.16', component_id: 3)
TestObject.create(id: 4, name: 'АРМ управления заседанием', version: '1.33.16', component_id: 4)
TestObject.create(id: 5, name: 'АРМ подготовки заседаний', version: '1.33.16', component_id: 5)
TestObject.create(id: 6, name: 'АРМ Администратора', version: '1.33.16', component_id: 6)
TestObject.create(id: 7, name: 'АРМ Руководителя', version: '1.33.16', component_id: 7)
TestObject.create(id: 8, name: 'АРМ члена Коллегии', version: '1.33.17', component_id: 2)
TestObject.create(id: 9, name: 'АРМ презентации', version: '1.33.17', component_id: 3)
TestObject.create(id: 10, name: 'АРМ управления заседанием', version: '1.33.17', component_id: 4)
TestObject.create(id: 11, name: 'АРМ подготовки заседаний', version: '1.33.17', component_id: 5)
TestObject.create(id: 12, name: 'АРМ Администратора', version: '1.33.17', component_id: 6)
TestObject.create(id: 13, name: 'АРМ Руководителя', version: '1.33.17', component_id: 7)

Suite.create(id: 1, title: 'Переход на главную страницу', priority: 'Высокий', component_id: 1)
Suite.create(id: 2, title: 'Открытие карточки СЭД', priority: 'Высокий', component_id: 1)
Suite.create(id: 3, title: "Переход на вкладку 'Реестр'", priority: 'Высокий', component_id: 1)
Suite.create(id: 4, title: 'Проверка функций модератора', priority: 'Высокий', component_id: 1)
Suite.create(id: 5, title: "Открытие формы 'Обратная связь'", priority: 'Высокий', component_id: 1)
Suite.create(id: 6, title: "Переход на вкладку 'Информационная поддержка'", priority: 'Высокий', component_id: 1)
Suite.create(id: 7, title: "Переход на вкладку 'Глоссарий'", priority: 'Высокий', component_id: 1)
Suite.create(id: 8, title: "Переход на вкладку 'Решения Коллегии'", priority: 'Высокий', component_id: 1)
Suite.create(id: 9, title: "Переход на вкладку 'Интерактивная модель'", priority: 'Высокий', component_id: 1)

CheckList.create(id: 1, title: "Авторизация", priority: "Высокий", tags: "авто", description: "Авторизировать незарегистрированного пользователя", suite_id: 1)
CheckList.create(id: 2, title: "Авторизация", priority: "Высокий", tags: "авто", description: "Авторизировать зарегистрированного пользователя", suite_id: 1)
CheckList.create(id: 3, title: "Регистрация нового пользователя", priority: "Средний", tags: "rest", description: "Зарегистрировать нового пользователя. Ввести e-mail, сменить капчу, ввести неправильную капчу, ввести правильную капчу.", suite_id: 1)
CheckList.create(id: 4, title: "Восстановление пароля", priority: "Высокий", tags: "rest", description: "Ввести e-mail несуществующего пользователя. Проверить сообщение об ошибке. Ввести e-mail существующего пользователя. Проверить получение письма.", suite_id: 1)
CheckList.create(id: 5, title: "Проверка верстки главной формы", priority: "Средний", tags: "авто", description: "Зайти на главную форму и проверить верстку формы. Переключить изображение на странице кнопками и в случайном порядке, проверить наличие полных названий статусов СЭД и раскрыть комбобоксы других версий", suite_id: 1)
CheckList.create(id: 6, title: "Проверка ссылок блока 'Начните работу'", priority: "Средний", tags: "rest", description: "В средней части формы обратить внимание на блок 'Начните работу'. Перейти по ссылке 'Находите', перейти по ссылке 'Следите', перейти по ссылке 'Изучайте', перейти по ссылке 'Проверяйте', перейти по ссылке 'Скачивайте', перейти по ссылке 'Получайте помощь', ", suite_id: 1)
CheckList.create(id: 7, title: "Проверка ссылок блока 'Подвал'", priority: "Средний", tags: "rest", description: "Прокрутить странизу донизу. Перейти по ссылке 'Главная'. Перейти по ссылке 'Реестр структур ЭД'. Перейти по ссылке 'Расширенный поиск'. Перейти по ссылке 'Пакетная выгрузка'. Перейти по ссылке 'Проверка XML'. Перейти по ссылке 'Интерактивная модель'. Перейти по ссылке 'Решение Коллегии'. Перейти по ссылке 'Принципы и подходы'. Перейти по ссылке 'Предметные области'. Перейти по ссылке 'Структура модели данных'. Перейти по ссылке 'Пользователи Реестра'. Перейти по ссылке 'Видеопомощник'. Перейти по ссылке 'Глоссарий'. Перейти по ссылке 'Правовые основания' ", suite_id: 1)
CheckList.create(id: 8, title: "Переключение вкладки 'Статусы версий'", priority: "Средний", tags: "rest", description: "В средней части формы обратить внимание на вкладки с документами разных статусов. Перейти на вкладку 'Новые', 'В действии', 'Недействующие' и проверить статусы документов на соответствие вкладке", suite_id: 1)
CheckList.create(id: 9, title: "Переход по ссылке 'Решение Коллегии'", priority: "Высокий", tags: "авто", description: "Перейти по ссылке 'Решения Коллегии' из главной формы и сверить содержание.", suite_id: 1)
CheckList.create(id: 10, title: "Войти в 'Личный кабинет'", priority: "Средний", tags: "rest", description: "Необходимо авторизоваться. После авторизации кликнуть по ФИО и перейти в личный кабинет", suite_id: 1)
CheckList.create(id: 11, title: "Регистрация заявления", priority: "Средний", tags: "rest", description: "Открываем форму регистрации заявления, заполняем все поля и нажимаем 'Сохранить'. Заявление создано.", suite_id: 1)
CheckList.create(id: 12, title: "Удаление заявления", priority: "Средний", tags: "rest", description: "Нажимаем 'x' рядом с заявлением. Заявление удален.", suite_id: 1)

CheckList.create(id: 13, title: "Переход на вкладку 'Проверка XML'", priority: "Высокий", tags: "авто", description: "В карточке СЭД кликнуть по вкладке 'Проверка XML'", suite_id: 2)
CheckList.create(id: 14, title: "Переход на вкладку 'Комментарии'", priority: "Высокий", tags: "авто", description: "В карточке СЭД кликнуть по вкладке 'Комментарии'", suite_id: 2)
CheckList.create(id: 15, title: "Переход на вкладку 'Описание'", priority: "Высокий", tags: "авто", description: "В карточке СЭД кликнуть по вкладке 'Описание'", suite_id: 2)
CheckList.create(id: 16, title: "Переход на вкладку 'Структура ЭД'", priority: "Высокий", tags: "авто", description: "В карточке СЭД кликнуть по вкладке 'Структура ЭД'", suite_id: 2)
CheckList.create(id: 17, title: "Переключение на другие версии", priority: "Высокий", tags: "авто", description: "В карточке СЭД раскрыть комбобокс 'Другие версии' и проверить отображение всех остальных версий.", suite_id: 2)

CheckList.create(id: 18, title: "Переход на вкладку 'Структуры ЭД'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Структуры ЭД', которая находится во вкладке 'Реестр'", suite_id: 3)
CheckList.create(id: 19, title: "Переход на вкладку 'Пакетная выгрузка'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Пакетная выгрузка', которая находится во вкладке 'Реестр'", suite_id: 3)
CheckList.create(id: 20, title: "Переход на вкладку 'Проверка XML'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Проверка XML', которая находится во вкладке 'Реестр''", suite_id: 3)

CheckList.create(id: 21, title: "Создание комментария", priority: "Средний", tags: "rest", description: "В карточке СЭД кликнуть по вкладке 'Комментарий' и добавить комментарий. Проверить появление комментария в личном кабинете", suite_id: 4)
CheckList.create(id: 22, title: "Открытие вкладки 'Пользователи'", priority: "Средний", tags: "rest", description: "После регистрации кликнуть по ФИО. В выпадающем списке выбрать 'Пользователи'", suite_id: 4)
CheckList.create(id: 23, title: "Открытие вкладки 'Модерация'", priority: "Средний", tags: "rest", description: "После регистрации кликнуть по ФИО. В выпадающем списке выбрать 'Модерация'", suite_id: 4)

CheckList.create(id: 24, title: "Создание вопроса", priority: "Высокий", tags: "rest", description: "Открыть 'Обратную связь' и заполнить все обязательные поля. Приложить файл и отправить вопрос. Проверить получение письма на почте", suite_id: 5)

CheckList.create(id: 25, title: "Проверка видеороликов", priority: "Средний", tags: "авто", description: "Во вкладке 'Информационная поддержка' поочередно открыть/закрыть/остановить видеоролики", suite_id: 6)
CheckList.create(id: 26, title: "Проверка глоссария", priority: "Средний", tags: "авто", description: "Во вкладке 'Информационная поддержка' проверить глоссария. Проверить  поиск термина, верстку строки поиска, переход по внутренним ссылкам", suite_id: 6)
CheckList.create(id: 27, title: "Переход по ссылкам блока 'Информация'", priority: "Средний", tags: "авто", description: "В средней части формы обратить внимание на блок 'Информация'. Перейти по ссылке 'Пользователи Реестра'. Перейти по ссылке 'Предметные области'. Перейти по ссылке 'Структура модели данных'. Перейти по ссылке 'Принципы и подходы'. Перейти по ссылке 'Формат XSD'. Перейти по ссылке 'Правовые основания'. Перейти по ссылке 'Задать вопрос'", suite_id: 6)

CheckList.create(id: 28, title: "Проверка глоссария", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Глоссарий'. Проверить  поиск термина, верстку строки поиска, переход по внутренним ссылкам", suite_id: 7)

CheckList.create(id: 29, title: "Проверка 'Решений Коллегии'", priority: "Высокий", tags: "авто", description: "Перейти на вкладку 'Решения Коллегии'. Поочередно проверить открытие всех решений коллегии, сверить описание Решений с официальной формулировкой.", suite_id: 8)

CheckList.create(id: 30, title: "Проверка режима 'Дерево'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Решения Коллегии'. Проверить отображение всех СЭДов в виде дерева. Проверить раскрываемость/скрываемость веток дерева", suite_id: 9)
CheckList.create(id: 31, title: "Проверка режима 'Паутина'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Решения Коллегии'. Проверить отображение всех СЭДов в виде паутины", suite_id: 9)
CheckList.create(id: 32, title: "Проверка скрытия/раскрытия панели'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Решения Коллегии'. Проверить скрытия/раскрытия панели с наименованием СЭДов", suite_id: 9)

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

OperatingSystem.create(id: 1, name: 'Windows')
OperatingSystem.create(id: 2, name: 'Mac OS')
OperatingSystem.create(id: 3, name: 'Ubuntu')
OperatingSystem.create(id: 4, name: 'Linux Mint')
OperatingSystem.create(id: 5, name: 'SUSE Linux Enterprise')
OperatingSystem.create(id: 6, name: 'CentOS')
OperatingSystem.create(id: 7, name: 'Red Hat Enterprise Linux')
OperatingSystem.create(id: 8, name: 'iOS')
OperatingSystem.create(id: 9, name: 'Android')
OperatingSystem.create(id: 10, name: 'Не используется')