# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(id: 1, title: 'Реестр структур ЭД')
Project.create(id: 2, title: 'АС ЭК')
Project.create(id: 3, title: 'Мобильный АРМ Руководителя')

Component.create(id: 1, title: 'Web-приложение', project_id: 1, description: 'Единый реестр структур электронных документов и сведений (реестр структур ЭД) - этоинформационный ресурс Евразийской экономической комиссии, включающий полный перечень утвержденных структур электронных документов и сведений в электронном виде, используемых при реализации информационного взаимодействия в интегрированной информационной системе внешней и взаимной торговли.')
Component.create(id: 2, title: 'АРМ члена Коллегии', project_id: 2)
Component.create(id: 3, title: 'АРМ презентации', project_id: 2)
Component.create(id: 4, title: 'АРМ управления заседанием', project_id: 2)
Component.create(id: 5, title: 'АРМ подготовки заседаний', project_id: 2)
Component.create(id: 6, title: 'АРМ Администратора', project_id: 2)
Component.create(id: 7, title: 'АРМ Руководителя', project_id: 2)
Component.create(id: 8, title: 'Мобильная Коллегия', project_id: 3)

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
Suite.create(id: 3, title: 'Переход на вкладку "Реестр"', priority: 'Высокий', component_id: 1)
Suite.create(id: 4, title: 'Проверка функций модератора', priority: 'Высокий', component_id: 1)
Suite.create(id: 5, title: 'Открытие формы "Обратная связь"', priority: 'Высокий', component_id: 1)
Suite.create(id: 6, title: 'Переход на вкладку "Информационная поддержка"', priority: 'Высокий', component_id: 1)
Suite.create(id: 7, title: 'Переход на вкладку "Глоссарий"', priority: 'Высокий', component_id: 1)
Suite.create(id: 8, title: 'Переход на вкладку "Решения Коллегии"', priority: 'Высокий', component_id: 1)
Suite.create(id: 9, title: 'Переход на вкладку "Интерактивная модель"', priority: 'Высокий', component_id: 1)
Suite.create(id: 10, title: 'Выбор заседаний', priority: "Высокий", component_id: 8)
Suite.create(id: 11, title: 'Открыть вкладку "Расписание заседаний"', priority: 'Высокий', component_id: 8)
Suite.create(id: 12, title: 'Открыть вкладку "Архив заседаний"', priority: 'Высокий', component_id: 8)

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
CheckList.create(id: 11, title: 'Проверить вкладку "Комментарии"', priority: "Средний", tags: "rest", description: 'Раскрыть СЭДы с комментариями и посмотреть статус комментариев. Изменить комментарий в статусе "Опубликован" - удостовериться, что измененный комментарий вновь попал на модерацию.', suite_id: 1)
CheckList.create(id: 12, title: 'Проверить вкладку "Профиль"', priority: "Средний", tags: "rest", description: "Установить оповещения. Сменить контактную информацию. Посмотреть избранные документы", suite_id: 1)

CheckList.create(id: 13, title: "Регистрация заявления", priority: "Средний", tags: "rest", description: "Открываем форму регистрации заявления, заполняем все поля и нажимаем 'Сохранить'. Заявление создано.", suite_id: 1)
CheckList.create(id: 14, title: "Удаление заявления", priority: "Средний", tags: "rest", description: "Нажимаем 'x' рядом с заявлением. Заявление удален.", suite_id: 1)

CheckList.create(id: 15, title: "Переход на вкладку 'Проверка XML'", priority: "Высокий", tags: "авто", description: "В карточке СЭД кликнуть по вкладке 'Проверка XML'", suite_id: 2)
CheckList.create(id: 16, title: "Скачивание XSD структур", priority: "Высокий", tags: "rest", description: "В форме 'Проверка XML' скачать XSD структуры", suite_id: 2)
CheckList.create(id: 17, title: 'Скачивание "Примера валидного XML"', priority: "Высокий", tags: "rest", description: "В форме 'Проверка XML' скачать пример валидного XML", suite_id: 2)
CheckList.create(id: 18, title: 'Проверка валидации XML', priority: "Высокий", tags: "rest", description: "Выбрать СЭД, версию СЭДа, скачать пример XML. Выбрать скачанный XML и нажать 'Проверить'", suite_id: 2)
CheckList.create(id: 19, title: 'Переход в раздел поддержки', priority: "Низкий", tags: "rest", description: "В форме 'Проверка XML' кликнуть по ссылке 'Поддержка'.", suite_id: 2)
CheckList.create(id: 20, title: 'Переход на вкладку "Комментарии"', priority: "Высокий", tags: "авто", description: "В карточке СЭД кликнуть по вкладке 'Комментарии'", suite_id: 2)
CheckList.create(id: 21, title: 'Добавление комментария', priority: "Высокий", tags: "авто", description: "В карточке СЭД кликнуть по вкладке 'Комментарии' затем добавить комментарий. Проверить почту - должно прийти письмо автору коментария", suite_id: 2)
CheckList.create(id: 22, title: 'Проверка рассылки писем администратору', priority: "Высокий", tags: "авто", description: "При добавлении нового комментария или обратной связи администратору реестра приходит письмо.", suite_id: 2)
CheckList.create(id: 23, title: "Переход на вкладку 'Описание'", priority: "Высокий", tags: "авто", description: "В карточке СЭД кликнуть по вкладке 'Описание'", suite_id: 2)
CheckList.create(id: 24, title: 'Открытие вкладки "Классическое"', priority: "Высокий", tags: "авто", description: "Во вкладке 'Описание' выбрать 'Классическое'. Проверить переход по таблицам и раскрытие папок", suite_id: 2)
CheckList.create(id: 25, title: 'Открытие вкладки "Текстовое"', priority: "Высокий", tags: "авто", description: "Во вкладке 'Описание' выбрать 'Текстовое'. Проверить поиск по имени и переход по найденным объектам", suite_id: 2)
CheckList.create(id: 26, title: 'Открытие вкладки "Табличное"', priority: "Высокий", tags: "авто", description: "Во вкладке 'Описание' выбрать 'Классическое'. Проверить верстку раскрываемого списка", suite_id: 2)
CheckList.create(id: 27, title: "Переход на вкладку 'Структура ЭД'", priority: "Высокий", tags: "авто", description: "В карточке СЭД кликнуть по вкладке 'Структура ЭД'", suite_id: 2)
CheckList.create(id: 28, title: "Поиск по словам в структуре ЭД", priority: "Высокий", tags: "авто", description: "В строке поиска ввести любое слово и выполнить поиск. Кнопками переключаться по найденнным словам", suite_id: 2)
CheckList.create(id: 29, title: 'Раскрытие дерева структуры СЭД', priority: "Высокий", tags: "авто", description: "Нажимая на '+' раскрыть дерево структуры СЭД", suite_id: 2)
CheckList.create(id: 30, title: "Переключение на другие версии", priority: "Высокий", tags: "авто", description: "В карточке СЭД раскрыть комбобокс 'Другие версии' и проверить отображение всех остальных версий.", suite_id: 2)

CheckList.create(id: 31, title: "Переход на вкладку 'Структуры ЭД'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Структуры ЭД', которая находится во вкладке 'Реестр'", suite_id: 3)
CheckList.create(id: 32, title: 'Проверка вкладки "Избранное"', priority: "Средний", tags: "авто", description: "Необходима авторизация. Перейти на вкладку 'Избранное', проверить наличие избранных СЭДов, убрать один из СЭДов из 'Избранных'", suite_id: 3)
CheckList.create(id: 33, title: "Переход по вкладкам 'Статусы версий'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Статусы версий', проверить соответствие статусов СЭД названию вкладки", suite_id: 3)
CheckList.create(id: 34, title: 'Проверка простого поиска', priority: "Средний", tags: "авто", description: "На вкладке 'Структура ЭД'' произвести простой поиск по имени СЭДа, описанию и коду структуры.", suite_id: 3)
CheckList.create(id: 35, title: 'Проверка расширенного поиска', priority: "Средний", tags: "авто", description: "На вкладке 'Структура ЭД' нажать на ссылку 'Расширенный поиск' и произвести простой поиск по утверждающему документу, структуре СЭД и элемента.", suite_id: 3)
CheckList.create(id: 36, title: 'Проверка документов во вкладке "Последние просмотренные"', priority: "Средний", tags: "авто", description: "Необходима авторизация. Проверить, что во вкладке записаны именно последние просмотренные СЭДы", suite_id: 3)
CheckList.create(id: 37, title: "Переход на вкладку 'Пакетная выгрузка'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Пакетная выгрузка', которая находится во вкладке 'Реестр'", suite_id: 3)
CheckList.create(id: 38, title: "Проверка комбобокса вкладки 'Пакетная выгрузка'", priority: "Средний", tags: "авто", description: "Проверить фильтрацию по утверждающему документу, дате начала использования, дате утверждения и дате прекращения использования.", suite_id: 3)
CheckList.create(id: 39, title: 'Проверка скачивания архива с вкладки "Все"', priority: "Средний", tags: "авто", description: 'На вкладке "Пакетная выгрузка" скачать поочередно XSD, XSD+PDF, XSD+PDF+Выписка.', suite_id: 3)
CheckList.create(id: 40, title: 'Проверка скачивания архива с вкладки "Не вступившие в действие"', priority: "Средний", tags: "авто", description: 'На вкладке "Пакетная выгрузка" скачать поочередно XSD, XSD+PDF, XSD+PDF+Выписка.', suite_id: 3)
CheckList.create(id: 41, title: 'Проверка скачивания архива с вкладки "Вступившие в действие"', priority: "Средний", tags: "авто", description: 'На вкладке "Пакетная выгрузка" скачать поочередно XSD, XSD+PDF, XSD+PDF+Выписка.', suite_id: 3)
CheckList.create(id: 42, title: 'Проверка скачивания архива с вкладки "Утратившие силу"', priority: "Средний", tags: "авто", description: 'На вкладке "Пакетная выгрузка" скачать поочередно XSD, XSD+PDF, XSD+PDF+Выписка.', suite_id: 3)
CheckList.create(id: 43, title: "Переход на вкладку 'Проверка XML'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Проверка XML', которая находится во вкладке 'Реестр''", suite_id: 3)

CheckList.create(id: 44, title: "Создание комментария", priority: "Средний", tags: "rest", description: "В карточке СЭД кликнуть по вкладке 'Комментарий' и добавить комментарий. Проверить появление комментария в личном кабинете", suite_id: 4)
CheckList.create(id: 45, title: "Открытие вкладки 'Пользователи'", priority: "Средний", tags: "rest", description: "После регистрации кликнуть по ФИО. В выпадающем списке выбрать 'Пользователи'", suite_id: 4)
CheckList.create(id: 46, title: 'Проверка функции "Поиск" во вкладке "Пользователи"', priority: "Средний", tags: "rest", description: "Осуществить поиск по e-mail, ФИО, периоду регистрации, статусу комментария и статусу пользователя ", suite_id: 4)
CheckList.create(id: 47, title: 'Проверка блокировки пользователя', priority: "Средний", tags: "rest", description: "заблокировать пользователя. Проверить, что пользователю пришло письмо от Реестра и он больше не может оставлять комментарии", suite_id: 4)
CheckList.create(id: 48, title: "Открытие вкладки 'Модерация'", priority: "Средний", tags: "rest", description: "После регистрации кликнуть по ФИО. В выпадающем списке выбрать 'Модерация'", suite_id: 4)
CheckList.create(id: 49, title: 'Проверка функции "Поиск" во вкладке "Модерация"', priority: "Средний", tags: "rest", description: "Осуществить поиск по e-mail, ФИО и тексту комментария.", suite_id: 4)
CheckList.create(id: 50, title: 'Модерация комментариев', priority: "Средний", tags: "rest", description: 'Во вкладке Модерация установить для комментариев в статусе "на модерации" новые статусы "Опубликовать" и "Отклонить"', suite_id: 4)

CheckList.create(id: 51, title: "Создание вопроса", priority: "Высокий", tags: "rest", description: "Открыть 'Обратную связь' и заполнить все обязательные поля. Приложить файл и отправить вопрос. Проверить получение письма на почте", suite_id: 5)

CheckList.create(id: 52, title: "Проверка видеороликов", priority: "Средний", tags: "авто", description: "Во вкладке 'Информационная поддержка' поочередно открыть/закрыть/остановить видеоролики", suite_id: 6)
CheckList.create(id: 53, title: "Проверка глоссария", priority: "Средний", tags: "авто", description: "Во вкладке 'Информационная поддержка' проверить глоссария. Проверить  поиск термина, верстку строки поиска, переход по внутренним ссылкам", suite_id: 6)
CheckList.create(id: 54, title: "Переход по ссылкам блока 'Информация'", priority: "Средний", tags: "авто", description: "В средней части формы обратить внимание на блок 'Информация'. Перейти по ссылке 'Пользователи Реестра'. Перейти по ссылке 'Предметные области'. Перейти по ссылке 'Структура модели данных'. Перейти по ссылке 'Принципы и подходы'. Перейти по ссылке 'Формат XSD'. Перейти по ссылке 'Правовые основания'. Перейти по ссылке 'Задать вопрос'", suite_id: 6)

CheckList.create(id: 55, title: "Проверка глоссария", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Глоссарий'. Проверить  поиск термина, верстку строки поиска, переход по внутренним ссылкам", suite_id: 7)

CheckList.create(id: 56, title: "Проверка 'Решений Коллегии'", priority: "Высокий", tags: "авто", description: "Перейти на вкладку 'Решения Коллегии'. Поочередно проверить открытие всех решений коллегии, сверить описание Решений с официальной формулировкой.", suite_id: 8)
CheckList.create(id: 57, title: "Проверка фильтра Решений Коллегии", priority: "Средний", tags: "авто", description: "В фильтре поочередно выбрать поиск 'по номеру решения', 'по дате решения', 'по наименованию решения' и найти разные Решения Коллегии", suite_id: 8)

CheckList.create(id: 58, title: "Проверка режима 'Дерево'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Решения Коллегии'. Проверить отображение всех СЭДов в виде дерева. Проверить раскрываемость/скрываемость веток дерева", suite_id: 9)
CheckList.create(id: 59, title: "Проверка режима 'Паутина'", priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Решения Коллегии'. Проверить отображение всех СЭДов в виде паутины", suite_id: 9)
CheckList.create(id: 60, title: 'Проверка скрытия/раскрытия панели', priority: "Средний", tags: "авто", description: "Перейти на вкладку 'Решения Коллегии'. Проверить скрытия/раскрытия панели с наименованием СЭДов", suite_id: 9)

CheckList.create(id: 61, title: 'Проверка выбора заседания', priority: "Высокий", tags: "rest", description: 'В правом верхнем углу есть кнопка "Выбрать заседания". Откроется список заседаний, которые можно синхронизировать, т.е. подтянуть из БД.', suite_id: 10)
CheckList.create(id: 62, title: 'Изменить тип заседания', priority: "Средний", tags: "rest", description: 'В комбобоксе "Тип заседания" 5 пунктов. Поочередно выбрать все.', suite_id: 11)
CheckList.create(id: 63, title: 'Открыть заседание', priority: "Высокий", tags: "rest", description: 'Сверить количество вопросов в повестке дня с количеством вопросов в заседании.', suite_id: 11)
CheckList.create(id: 64, title: 'Открыть вкладку "Повестка дня"', priority: "Средний", tags: "rest", description: 'Проверить содержание и количество вопросов. Все должно совпадать с арм Подготовки. Вопросы должны помечаться как внеплановые, дополнительные, плановые. Если есть комментарий от помощника, то должен быть виден "светофор"', suite_id: 11)
CheckList.create(id: 65, title: 'Открыть вкладку "Вопросы для подготовки"', priority: "Средний", tags: "rest", description: 'Во вкладке должен быть блок "Необходимо приготовить". Если есть вопросы, в которых министр ответственен, то они должны быть выведены. Если вопросов нет, то сообщение "Вопросов для подготовки в заседении нет"', suite_id: 11)
CheckList.create(id: 66, title: 'Открыть вкладку "Участники"', priority: "Средний", tags: "rest", description: 'В этой вкладке перечислены все участники заседания. Отдельно выделены те, кто отсутствует. В колонке "Вопросы" проставлены номера вопросов, за которые ответственны министры', suite_id: 11)
CheckList.create(id: 67, title: 'Открыть вкладку "Документы"', priority: "Средний", tags: "rest", description: 'В блоке "Комплект документов к заседанию" прикреплены все документы к заседанию. В противном случае надпись "Документов в заседании нет"', suite_id: 11)
CheckList.create(id: 68, title: 'Открыть вопрос заседания', priority: "Средний", tags: "rest", description: 'Сверить информацию с вкладок "Информация по рассматриваемому вопросу" и "Документы"', suite_id: 11)
CheckList.create(id: 69, title: 'Открыть любой документ', priority: "Средний", tags: "rest", description: 'Произвести различные действия с документом: увеличить текст, перевернуть страницу.', suite_id: 11)
CheckList.create(id: 70, title: 'Нажать на кнопку "Комментарий"', priority: "Средний", tags: "rest", description: 'Проверить наличие комментариев в тексте. Проверить кнопку "Показывать комментарии в тексте документа".', suite_id: 11)
CheckList.create(id: 71, title: 'Изменить тип заседания', priority: "Средний", tags: "rest", description: 'В комбобоксе "Тип заседания" 5 пунктов. Поочередно выбрать все.', suite_id: 12)
CheckList.create(id: 72, title: 'Открыть заседание', priority: "Высокий", tags: "rest", description: 'Сверить количество вопросов в повестке дня с количеством вопросов в заседании.', suite_id: 12)
CheckList.create(id: 73, title: 'Открыть вкладку "Повестка дня"', priority: "Средний", tags: "rest", description: 'Проверить содержание и количество вопросов. Все должно совпадать с арм Подготовки. Вопросы должны помечаться как внеплановые, дополнительные, плановые. Если есть комментарий от помощника, то должен быть виден "светофор"', suite_id: 12)
CheckList.create(id: 74, title: 'Открыть вкладку "Вопросы для подготовки"', priority: "Средний", tags: "rest", description: 'Во вкладке должен быть блок "Необходимо приготовить". Если есть вопросы, в которых министр ответственен, то они должны быть выведены. Если вопросов нет, то сообщение "Вопросов для подготовки в заседении нет"', suite_id: 12)
CheckList.create(id: 75, title: 'Открыть вкладку "Участники"', priority: "Средний", tags: "rest", description: 'В этой вкладке перечислены все участники заседания. Отдельно выделены те, кто отсутствует. В колонке "Вопросы" проставлены номера вопросов, за которые ответственны министры', suite_id: 12)
CheckList.create(id: 76, title: 'Открыть вкладку "Документы"', priority: "Средний", tags: "rest", description: 'В блоке "Комплект документов к заседанию" прикреплены все документы к заседанию. В противном случае надпись "Документов в заседании нет"', suite_id: 12)
CheckList.create(id: 77, title: 'Открыть вопрос заседания', priority: "Средний", tags: "rest", description: 'Сверить информацию с вкладок "Информация по рассматриваемому вопросу" и "Документы"', suite_id: 12)
CheckList.create(id: 78, title: 'Открыть любой документ', priority: "Средний", tags: "rest", description: 'Произвести различные действия с документом: увеличить текст, перевернуть страницу.', suite_id: 12)
CheckList.create(id: 79, title: 'Нажать на кнопку "Комментарий"', priority: "Средний", tags: "rest", description: 'Проверить наличие комментариев в тексте. Проверить кнопку "Показывать комментарии в тексте документа".', suite_id: 12)

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
