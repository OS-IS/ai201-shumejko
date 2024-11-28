## 2.2 Перевірка надійності пароля за списком "10000 найгірших паролів"

### 2.2.1 В репозиторії https://github.com/danielmiessler/SecLists/tree/master/Passwords розміщено файли зі списку "10000 найгірших паролів", назви яких представлено в таблиці 1. Отримати файл, номер якого відповідає вашому варіанту.
![Screenshot_1](https://github.com/user-attachments/assets/4cbaa3e0-4ac4-4149-af37-c107b62f466b)

### 2.2.2 Створити таблицю в БД СКБД PostgreSQL, назва якої відповідає назві файлу, та завантажити вміст файлу у таблицю, використовуючи будь-який засіб імпорту, наприклад, команду \COPY утиліти psql.

![Screenshot_2](https://github.com/user-attachments/assets/a8edbf21-191c-4cdd-b987-1eb92dde2cce)


### 2.2.3 Створити функцію user_register на мові програмування PL/pgSQL, яка буде pабороняти створювати пароль, якщо він є у таблиці гірших паролів.
![Screenshot_3](https://github.com/user-attachments/assets/ebc105bb-4428-4d80-90fa-98aba3207678)


### 2.2.4 Провести тестування роботи функції user_register за двома тестовими сценаріями (правильний та неправильний).
![Screenshot_4](https://github.com/user-attachments/assets/e30ac875-111c-4589-8a26-c33fe75dacac)



