# ConductLessons
## VK Java Course — 4-th homework: Developing the DB scheme
## Run project using gradle task `runApp` in group `run`

# Разработка схемы БД
### Описание
Знакомство с СУБД Postgres. Нормальные формы. Операторы SQL создание таблиц. Миграция БД. Библиотека миграции flyway.  
### Домашнее задание №4: Разработка схемы БД
Цель домашнего задания - спроектировать структуру БД используя нормализацию до 3 НФ, освоить работу с инструментом применения миграций flyway.

### Общие требования
Проект должен содержать несколько миграций, принимать в каком-либо виде адрес сервера БД Postgresql, логин и пароль, создавать на нем при помощи библиотеки flyway структуру БД в соответствии с заданием. Одна из миграций должна редактировать существующую структуру БД (добавлять или удалять таблицы).


### Спроектировать БД для ведения online занятий. БД должна содержать:

* Данные преподавателей  
* Данные студентов  
* Читаемые курсы  
* Расписание курсов  
* Зачисленные на курс студенты  
* Отметки о посещении курсов и выполнении домашнего задания  

Here is a scheme of created database: ![alt text](https://raw.githubusercontent.com/aleksseii/ConductLessons/hw4/lessons_db_scheme.jpg)
## To show all the usefull data without ids and other stuff, use the following [`SELECT` query](https://github.com/aleksseii/ConductLessons/blob/hw4/select_useful_data.sql)
