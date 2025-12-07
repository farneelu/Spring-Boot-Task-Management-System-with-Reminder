Spring Boot Smart Task Management System is a web-based application developed using Spring Boot, JSP, JPA (Hibernate), and MySQL. This system allows users to add, update, delete, and manage tasks efficiently. It also includes an automatic reminder feature where users can set a due date and receive reminder alerts using a Spring Scheduler. The project follows the MVC architecture and demonstrates real-world implementation of CRUD operations, database handling, and background job scheduling using Spring Boot.


# 🗂️ Spring Boot Smart Task Management System with Reminder

A web-based Task Management System built using **Spring Boot, JSP, JPA (Hibernate), and MySQL**.  
This application allows users to **add, update, delete, and manage tasks efficiently**, with an **automatic reminder system** using Spring Scheduler.

---

## 🚀 Features

- ✅ Add new tasks
- ✅ Update existing tasks
- ✅ Delete tasks
- ✅ View all tasks
- ✅ Set **Reminder Date & Time** for each task
- ✅ **Automatic Reminder System** using Spring Scheduler
- ✅ Prevents duplicate reminders using reminder status
- ✅ Uses **MVC Architecture**
- ✅ Clean UI using JSP and CSS
- ✅ MySQL database integration

---

## 🛠️ Technologies Used

- **Java**
- **Spring Boot**
- **Spring MVC**
- **Spring Scheduling**
- **JPA (Hibernate)**
- **MySQL**
- **JSP**
- **HTML & CSS**
- **Apache Tomcat**
- **Maven**

---
## 🛢️ Database Structure

**Table: `task`**

| Column Name       | Data Type   |
|-------------------|-------------|
| id                | INT (PK)    |
| title             | VARCHAR     |
| description       | VARCHAR     |
| due_date          | DATETIME    |
| reminder_status   | BOOLEAN     |

---

## ⚙️ Database Configuration (`application.properties`)

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/task_management
spring.datasource.username=root
spring.datasource.password=your_password

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true


✅ Open in Browser:
http://localhost:8080/



