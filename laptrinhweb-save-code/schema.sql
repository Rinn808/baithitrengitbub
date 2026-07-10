CREATE DATABASE IF NOT EXISTS appdb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE appdb;

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS registrations;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS users;
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(256) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    role VARCHAR(20) DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    credits INT NOT NULL,
    lecturer VARCHAR(100) NOT NULL,
    description TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Sample data
INSERT INTO users (username, password, fullname, role) VALUES 
('admin', 'a3f5c96e28d8a89e57ff1cb79a674c349e2db4aad65c51ef6dc0c8b9b0c8e2a1', 'Admin User', 'admin');

INSERT INTO courses (code, name, credits, lecturer, description) VALUES 
('CS101', 'Introduction to Java', 3, 'Prof. John Doe', 'Learn Java programming basics'),
('CS102', 'Web Development', 3, 'Prof. Jane Smith', 'Build modern web applications'),
('CS103', 'Database Design', 3, 'Prof. Mike Johnson', 'Master SQL and database concepts'),
('CS104', 'Python Programming', 3, 'Prof. Sarah Williams', 'Python for beginners and advanced');
