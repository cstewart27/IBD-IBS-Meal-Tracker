USE sys;
DROP DATABASE IF EXISTS ibd_ibs_sympmtom_tracker;
CREATE DATABASE ibd_ibs_sympmtom_tracker;
USE ibd_ibs_sympmtom_tracker;
CREATE TABLE users (
  userId INT NOT NULL AUTO_INCREMENT,
  firstName varchar(30) NOT NULL,
  lastName varchar(30) NOT NULL,
  PRIMARY KEY (userId)
);
CREATE TABLE `groups` (
  groupId INT NOT NULL AUTO_INCREMENT,
  familyName varchar(30),
  PRIMARY KEY (groupId)
);
CREATE TABLE `groups_users` (
  groupId INT NOT NULL,
  userId INT NOT NULL UNIQUE,
  PRIMARY KEY (userId),
  CONSTRAINT FK_userId_group FOREIGN KEY (userId) REFERENCES users(userId)
);
create TABLE meals (
  mealId INT NOT NULL AUTO_INCREMENT,
  userId INT NOT NULL,
  favorite boolean default false,
  mealName varchar(30),
  date date NOT NULL,
  calories DECIMAL(10, 2),
  serving_size_g DECIMAL(10, 2),
  fat_total_g DECIMAL(10, 2),
  fat_saturated_g DECIMAL(10, 2),
  protein_g DECIMAL(10, 2),
  sodium_mg DECIMAL(10, 2),
  potassium_mg DECIMAL(10, 2),
  cholesterol_mg DECIMAL(10, 2),
  carbohydrates_total_g DECIMAL(10, 2),
  fiber_g DECIMAL(10, 2),
  sugar_g DECIMAL(10, 2),
  PRIMARY KEY(mealId, `date`, userId),
  CONSTRAINT FK_userId_meal FOREIGN KEY (userId) REFERENCES users(userId)
);
 

INSERT INTO users (firstName, lastName)
VALUES ('John', 'Doe'),
  ('Jane', 'Smith'),
  ('Michael', 'Johnson'),
  ('Sarah', 'Williams'),
  ('David', 'Brown'),
  ('Emily', 'Jones'),
  ('Matthew', 'Davis'),
  ('Olivia', 'Miller'),
  ('Andrew', 'Wilson'),
  ('Sophia', 'Taylor'),
  ('James', 'Anderson'),
  ('Isabella', 'Thomas'),
  ('William', 'Martinez'),
  ('Abigail', 'Moore'),
  ('Benjamin', 'Hernandez'),
  ('Mia', 'Lee'),
  ('Elijah', 'Lopez'),
  ('Charlotte', 'Garcia'),
  ('Daniel', 'Jackson'),
  ('Amelia', 'White'),
  ('Aiden', 'Robinson'),
  ('Harper', 'Lewis'),
  ('Logan', 'Harris'),
  ('Ella', 'Hall'),
  ('Lucas', 'Walker'),
  ('Sofia', 'Perez'),
  ('Jackson', 'Allen'),
  ('Avery', 'Sanchez'),
  ('Carter', 'Scott'),
  ('Scarlett', 'Ramirez');

INSERT INTO `groups` (groupId, familyName)
VALUES (1, 'Doe Family'),
  (2, 'Johnson Family'),
  (3, 'Brown Family'),
  (4, 'Davis Family'),
  (5, 'Wilson Family'),
  (6, 'Anderson Family'),
  (7, 'Martinez Family'),
  (8, 'Moore Family'),
  (9, 'Hernandez Family'),
  (10, 'Lopez Family'),
  (11, 'Garcia Family'),
  (12, 'Jackson Family'),
  (13, 'Robinson Family'),
  (14, 'Lewis Family'),
  (15, 'Hall Family');
 

INSERT INTO `groups_users` (groupId, userId)
VALUES (1, 1),
  (2, 3),
  (3, 5),
  (4, 7),
  (5, 9),
  (6, 11),
  (7, 13),
  (8, 15),
  (9, 17),
  (10, 19),
  (11, 21),
  (12, 23),
  (13, 25),
  (14, 27),
  (15, 29);

 

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g)

VALUES

  ('2023-07-01', 1, 'Breakfast', 350.25, 200, 10.5, 4.2, 15.8, 350, 120, 40, 25.5, 2.5, 5),

  ('2023-07-01', 1, 'Lunch', 520.75, 300, 15.2, 6.7, 25.3, 500, 180, 55, 40.2, 3.5, 8),

  ('2023-07-01', 1, 'Dinner', 420.00, 250, 12.8, 5.5, 18.5, 400, 160, 45, 30.7, 3.0, 6),

  ('2023-07-02', 3, 'Breakfast', 300.50, 180, 8.5, 3.5, 12.0, 300, 100, 35, 22.5, 2.0, 4),

  ('2023-07-02', 3, 'Lunch', 480.00, 270, 13.7, 5.0, 20.7, 450, 160, 50, 36.5, 3.2, 7)

  ;

 

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g)

VALUES

  ('2023-07-06', 11, 'Breakfast', 380.75, 220, 9.8, 4.0, 16.5, 360, 130, 40, 28.5, 2.5, 5),

  ('2023-07-06', 11, 'Lunch', 540.50, 320, 15.5, 6.5, 25.5, 520, 200, 55, 45.0, 3.5, 8),

  ('2023-07-06', 11, 'Dinner', 430.00, 260, 12.2, 5.0, 19.0, 410, 170, 48, 34.2, 3.0, 6),

  ('2023-07-07', 13, 'Breakfast', 330.25, 200, 8.5, 3.5, 15.2, 340, 110, 42, 25.8, 2.2, 6),

  ('2023-07-07', 13, 'Lunch', 490.75, 300, 13.0, 5.2, 23.8, 480, 180, 50, 40.8, 3.0, 7),

  ('2023-07-07', 13, 'Dinner', 410.25, 240, 10.7, 4.5, 18.8, 390, 150, 45, 32.0, 2.8, 5),

  ('2023-07-07', 15, 'Breakfast', 350.50, 210, 9.0, 3.8, 15.0, 350, 120, 40, 27.0, 2.5, 4),

  ('2023-07-07', 15, 'Lunch', 520.00, 310, 14.2, 5.5, 24.0, 500, 190, 52, 39.5, 3.5, 7),

  ('2023-07-07', 15, 'Dinner', 420.50, 250, 11.5, 4.8, 19.2, 400, 160, 48, 31.5, 2.8, 6),

  ('2023-07-07', 17, 'Breakfast', 310.75, 190, 8.2, 3.2, 14.5, 320, 100, 39, 25.2, 2.3, 5),

  ('2023-07-07', 17, 'Lunch', 490.50, 300, 12.8, 5.0, 24.5, 470, 180, 50, 41.0, 3.0, 8),

  ('2023-07-07', 17, 'Dinner', 420.00, 250, 11.0, 4.5, 19.5, 390, 150, 46, 30.5, 2.8, 6)

  ;

 

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g)

VALUES

  ('2023-07-10', 19, 'Breakfast', 380.25, 220, 9.5, 4.0, 16.8, 360, 130, 40, 28.2, 2.5, 5),

  ('2023-07-10', 19, 'Lunch', 530.75, 320, 15.0, 6.2, 25.8, 510, 190, 54, 44.5, 3.5, 7),

  ('2023-07-10', 19, 'Dinner', 410.00, 240, 11.0, 4.8, 19.5, 390, 160, 47, 33.0, 2.8, 6),

  ('2023-07-11', 21, 'Breakfast', 340.50, 200, 8.2, 3.0, 15.0, 350, 110, 38, 25.0, 2.0, 6),

  ('2023-07-11', 21, 'Lunch', 510.00, 300, 12.5, 5.2, 23.5, 490, 180, 51, 40.2, 3.2, 8),

  ('2023-07-11', 21, 'Dinner', 420.25, 250, 11.2, 4.5, 18.8, 400, 150, 45, 31.2, 2.8, 5),

  ('2023-07-12', 23, 'Breakfast', 330.75, 190, 8.0, 3.5, 14.2, 330, 100, 40, 26.5, 2.3, 4),

  ('2023-07-12', 23, 'Lunch', 500.50, 300, 13.0, 5.5, 24.0, 480, 180, 54, 39.8, 3.5, 7),

  ('2023-07-12', 23, 'Dinner', 430.00, 260, 11.5, 4.8, 19.2, 400, 160, 49, 32.0, 2.8, 6),

  ('2023-07-13', 25, 'Breakfast', 320.25, 200, 8.5, 3.2, 14.5, 340, 110, 38, 25.8, 2.2, 5),

  ('2023-07-13', 25, 'Lunch', 490.75, 300, 12.8, 5.0, 24.2, 470, 170, 50, 41.0, 3.0, 8),

  ('2023-07-13', 25, 'Dinner', 410.25, 240, 11.0, 4.5, 19.8, 390, 150, 47, 32.2, 2.8, 6)

  ;

 

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g)

VALUES

  ('2023-07-14', 27, 'Breakfast', 380.25, 220, 9.5, 4.0, 16.8, 360, 130, 40, 28.2, 2.5, 5),

  ('2023-07-14', 27, 'Lunch', 530.75, 320, 15.0, 6.2, 25.8, 510, 190, 54, 44.5, 3.5, 7),

  ('2023-07-14', 27, 'Dinner', 410.00, 240, 11.0, 4.8, 19.5, 390, 160, 47, 33.0, 2.8, 6),

  ('2023-07-15', 29, 'Breakfast', 340.50, 200, 8.2, 3.0, 15.0, 350, 110, 38, 25.0, 2.0, 6),

  ('2023-07-15', 29, 'Lunch', 510.00, 300, 12.5, 5.2, 23.5, 490, 180, 51, 40.2, 3.2, 8),

  ('2023-07-15', 29, 'Dinner', 420.25, 250, 11.2, 4.5, 18.8, 400, 150, 45, 31.2, 2.8, 5),

  ('2023-07-16', 1, 'Breakfast', 330.75, 190, 8.0, 3.5, 14.2, 330, 100, 40, 26.5, 2.3, 4),

  ('2023-07-16', 1, 'Lunch', 500.50, 300, 13.0, 5.5, 24.0, 480, 180, 54, 39.8, 3.5, 7),

  ('2023-07-16', 1, 'Dinner', 430.00, 260, 11.5, 4.8, 19.2, 400, 160, 49, 32.0, 2.8, 6),

  ('2023-07-17', 3, 'Breakfast', 320.25, 200, 8.5, 3.2, 14.5, 340, 110, 38, 25.8, 2.2, 5),

  ('2023-07-17', 3, 'Lunch', 490.75, 300, 12.8, 5.0, 24.2, 470, 170, 50, 41.0, 3.0, 8),

  ('2023-07-17', 3, 'Dinner', 410.25, 240, 11.0, 4.5, 19.8, 390, 150, 47, 32.2, 2.8, 6)

  ;

 

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g)

VALUES

  ('2023-07-18', 5, 'Breakfast', 380.25, 220, 9.5, 4.0, 16.8, 360, 130, 40, 28.2, 2.5, 5),

  ('2023-07-18', 5, 'Lunch', 530.75, 320, 15.0, 6.2, 25.8, 510, 190, 54, 44.5, 3.5, 7),

  ('2023-07-18', 5, 'Dinner', 410.00, 240, 11.0, 4.8, 19.5, 390, 160, 47, 33.0, 2.8, 6),

  ('2023-07-19', 7, 'Breakfast', 340.50, 200, 8.2, 3.0, 15.0, 350, 110, 38, 25.0, 2.0, 6),

  ('2023-07-19', 7, 'Lunch', 510.00, 300, 12.5, 5.2, 23.5, 490, 180, 51, 40.2, 3.2, 8),

  ('2023-07-19', 7, 'Dinner', 420.25, 250, 11.2, 4.5, 18.8, 400, 150, 45, 31.2, 2.8, 5),

  ('2023-07-20', 9, 'Breakfast', 330.75, 190, 8.0, 3.5, 14.2, 330, 100, 40, 26.5, 2.3, 4),

  ('2023-07-20', 9, 'Lunch', 500.50, 300, 13.0, 5.5, 24.0, 480, 180, 54, 39.8, 3.5, 7),

  ('2023-07-20', 9, 'Dinner', 430.00, 260, 11.5, 4.8, 19.2, 400, 160, 49, 32.0, 2.8, 6),

  ('2023-07-21', 11, 'Breakfast', 320.25, 200, 8.5, 3.2, 14.5, 340, 110, 38, 25.8, 2.2, 5),

  ('2023-07-21', 11, 'Lunch', 490.75, 300, 12.8, 5.0, 24.2, 470, 170, 50, 41.0, 3.0, 8),

  ('2023-07-21', 11, 'Dinner', 410.25, 240, 11.0, 4.5, 19.8, 390, 150, 47, 32.2, 2.8, 6)

  ;

 

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g)

VALUES

  ('2023-07-22', 13, 'Breakfast', 380.25, 220, 9.5, 4.0, 16.8, 360, 130, 40, 28.2, 2.5, 5),

  ('2023-07-22', 13, 'Lunch', 530.75, 320, 15.0, 6.2, 25.8, 510, 190, 54, 44.5, 3.5, 7),

  ('2023-07-22', 13, 'Dinner', 410.00, 240, 11.0, 4.8, 19.5, 390, 160, 47, 33.0, 2.8, 6),

  ('2023-07-23', 15, 'Breakfast', 340.50, 200, 8.2, 3.0, 15.0, 350, 110, 38, 25.0, 2.0, 6),

  ('2023-07-23', 15, 'Lunch', 510.00, 300, 12.5, 5.2, 23.5, 490, 180, 51, 40.2, 3.2, 8),

  ('2023-07-23', 15, 'Dinner', 420.25, 250, 11.2, 4.5, 18.8, 400, 150, 45, 31.2, 2.8, 5),

  ('2023-07-24', 17, 'Breakfast', 330.75, 190, 8.0, 3.5, 14.2, 330, 100, 40, 26.5, 2.3, 4),

  ('2023-07-24', 17, 'Lunch', 500.50, 300, 13.0, 5.5, 24.0, 480, 180, 54, 39.8, 3.5, 7),

  ('2023-07-24', 17, 'Dinner', 430.00, 260, 11.5, 4.8, 19.2, 400, 160, 49, 32.0, 2.8, 6),

  ('2023-07-25', 19, 'Breakfast', 320.25, 200, 8.5, 3.2, 14.5, 340, 110, 38, 25.8, 2.2, 5),

  ('2023-07-25', 19, 'Lunch', 490.75, 300, 12.8, 5.0, 24.2, 470, 170, 50, 41.0, 3.0, 8),

  ('2023-07-25', 19, 'Dinner', 410.25, 240, 11.0, 4.5, 19.8, 390, 150, 47, 32.2, 2.8, 6)

  ;

 

-- ALTER TABLE users

--  ADD CONSTRAINT FK_groupId

--     FOREIGN KEY (groupId) REFERENCES  `groups` (groupId);

 

DELETE FROM meals

WHERE userId = 1;

 

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-01', 1, 'Breakfast', 350, 200, 10, 2, 15, 300, 100, 50, 30, 5, 10),

('2023-07-01', 1, 'Lunch', 550, 400, 20, 5, 25, 500, 200, 70, 45, 8, 15),

('2023-07-01', 1, 'Dinner', 600, 350, 25, 8, 30, 600, 250, 80, 40, 6, 20),

('2023-07-02', 1, 'Breakfast', 300, 180, 8, 1.5, 20, 250, 90, 40, 28, 4, 12),

('2023-07-02', 1, 'Lunch', 500, 380, 18, 4, 22, 450, 180, 60, 42, 7, 14),

('2023-07-02', 1, 'Dinner', 650, 320, 28, 9, 35, 580, 220, 90, 38, 5, 18),

('2023-07-03', 1, 'Breakfast', 370, 220, 12, 2.5, 18, 280, 110, 45, 32, 6, 8),

('2023-07-03', 1, 'Lunch', 520, 390, 15, 3.5, 28, 520, 210, 75, 39, 9, 20),

('2023-07-03', 1, 'Dinner', 620, 340, 22, 6, 32, 600, 240, 85, 48, 6, 15),

('2023-07-04', 1, 'Breakfast', 390, 240, 14, 3, 20, 290, 120, 55, 35, 4, 10),

('2023-07-04', 1, 'Lunch', 530, 400, 20, 4, 30, 550, 190, 70, 44, 10, 18),

('2023-07-04', 1, 'Dinner', 680, 360, 24, 7, 38, 630, 270, 95, 50, 8, 20),

('2023-07-05', 1, 'Breakfast', 320, 200, 10, 2, 15, 260, 100, 50, 30, 6, 12),

('2023-07-05', 1, 'Lunch', 550, 390, 17, 3, 25, 540, 200, 70, 42, 9, 15),

('2023-07-05', 1, 'Dinner', 630, 350, 22, 6, 32, 590, 250, 80, 38, 6, 18),

('2023-07-06', 1, 'Breakfast', 380, 220, 12, 2.5, 20, 300, 110, 45, 32, 5, 10),

('2023-07-06', 1, 'Lunch', 520, 380, 16, 4, 26, 530, 180, 65, 40, 7, 12),

('2023-07-06', 1, 'Dinner', 670, 340, 23, 7, 36, 620, 230, 90, 48, 6, 15),

('2023-07-07', 1, 'Breakfast', 340, 190, 10, 2, 15, 280, 100, 50, 30, 6, 12),

('2023-07-07', 1, 'Lunch', 540, 380, 18, 4, 26, 550, 190, 70, 42, 8, 14),

('2023-07-07', 1, 'Dinner', 650, 360, 25, 8, 32, 600, 240, 85, 45, 6, 18),

('2023-07-07', 1, 'Breakfast', 360, 210, 12, 3, 18, 290, 110, 45, 32, 5, 10),

('2023-07-07', 1, 'Lunch', 540, 380, 17, 4, 25, 540, 200, 70, 42, 9, 15),

('2023-07-07', 1, 'Dinner', 680, 350, 23, 7, 36, 620, 250, 90, 48, 6, 20),

('2023-07-07', 1, 'Breakfast', 350, 200, 10, 2, 15, 300, 100, 50, 30, 6, 10),

('2023-07-07', 1, 'Lunch', 520, 390, 18, 3.5, 26, 530, 190, 70, 39, 8, 12),

('2023-07-07', 1, 'Dinner', 630, 350, 22, 6, 32, 590, 240, 80, 48, 6, 18),

('2023-07-10', 1, 'Breakfast', 370, 220, 12, 2.5, 20, 310, 110, 45, 32, 4, 10),

('2023-07-10', 1, 'Lunch', 540, 380, 18, 3.5, 28, 540, 190, 70, 40, 7, 15),

('2023-07-10', 1, 'Dinner', 660, 340, 24, 7, 35, 610, 250, 90, 50, 6, 18);

 

-- July 11, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-11', 1, 'Breakfast', 360, 210, 11, 2.5, 18, 280, 100, 45, 30, 5, 10),

('2023-07-11', 1, 'Lunch', 530, 390, 17, 4, 25, 530, 200, 70, 42, 8, 15),

('2023-07-11', 1, 'Dinner', 640, 350, 23, 6, 32, 590, 240, 85, 45, 7, 18);

 

-- July 12, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-12', 1, 'Breakfast', 350, 200, 10, 2, 15, 300, 100, 50, 30, 5, 10),

('2023-07-12', 1, 'Lunch', 550, 400, 20, 5, 25, 500, 200, 70, 45, 8, 15),

('2023-07-12', 1, 'Dinner', 600, 350, 25, 8, 30, 600, 250, 80, 40, 6, 20);

 

-- July 13, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-13', 1, 'Breakfast', 370, 220, 12, 2.5, 18, 280, 110, 45, 32, 6, 8),

('2023-07-13', 1, 'Lunch', 520, 390, 15, 3.5, 28, 520, 210, 75, 39, 9, 20),

('2023-07-13', 1, 'Dinner', 620, 340, 22, 6, 32, 600, 240, 85, 48, 6, 15);

 

-- July 14, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-14', 1, 'Breakfast', 390, 240, 14, 3, 20, 290, 120, 55, 35, 4, 10),

('2023-07-14', 1, 'Lunch', 530, 400, 20, 4, 30, 550, 190, 70, 44, 10, 18),

('2023-07-14', 1, 'Dinner', 680, 360, 24, 7, 38, 630, 270, 95, 50, 8, 20);

 

-- July 15, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-15', 1, 'Breakfast', 320, 200, 10, 2, 15, 260, 100, 50, 30, 6, 12),

('2023-07-15', 1, 'Lunch', 550, 390, 17, 3, 25, 540, 200, 70, 42, 9, 15),

('2023-07-15', 1, 'Dinner', 630, 350, 22, 6, 32, 590, 250, 80, 38, 6, 18);

 

-- July 16, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-16', 1, 'Breakfast', 380, 220, 12, 2.5, 20, 300, 110, 45, 32, 5, 10),

('2023-07-16', 1, 'Lunch', 520, 380, 16, 4, 26, 530, 180, 65, 40, 7, 12),

('2023-07-16', 1, 'Dinner', 670, 340, 23, 7, 36, 620, 230, 90, 48, 6, 15);

 

-- July 17, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-17', 1, 'Breakfast', 340, 190, 10, 2, 15, 280, 100, 50, 30, 6, 12),

('2023-07-17', 1, 'Lunch', 540, 380, 18, 4, 26, 550, 190, 70, 42, 8, 14),

('2023-07-17', 1, 'Dinner', 650, 360, 25, 8, 32, 600, 240, 85, 45, 6, 18);

 

-- July 18, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-18', 1, 'Breakfast', 360, 210, 12, 3, 18, 290, 110, 45, 32, 5, 10),

('2023-07-18', 1, 'Lunch', 540, 380, 17, 4, 25, 540, 200, 70, 42, 9, 15),

('2023-07-18', 1, 'Dinner', 680, 350, 23, 7, 36, 620, 250, 90, 48, 6, 20);

 

-- July 19, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-19', 1, 'Breakfast', 350, 200, 10, 2, 15, 300, 100, 50, 30, 6, 10),

('2023-07-19', 1, 'Lunch', 520, 390, 18, 3.5, 26, 530, 190, 70, 39, 8, 12),

('2023-07-19', 1, 'Dinner', 630, 350, 22, 6, 32, 590, 240, 80, 48, 6, 18);

 

-- July 20, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-20', 1, 'Breakfast', 370, 220, 12, 2.5, 20, 310, 110, 45, 32, 4, 10),

('2023-07-20', 1, 'Lunch', 540, 380, 18, 3.5, 28, 540, 190, 70, 40, 7, 15),

('2023-07-20', 1, 'Dinner', 660, 340, 24, 7, 35, 610, 250, 90, 50, 6, 18);

 

-- July 21, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-21', 1, 'Breakfast', 380, 220, 11, 2.5, 18, 280, 100, 45, 32, 5, 10),

('2023-07-21', 1, 'Lunch', 530, 390, 17, 4, 25, 530, 200, 70, 42, 8, 15),

('2023-07-21', 1, 'Dinner', 640, 350, 23, 6, 32, 590, 240, 85, 45, 7, 18);

 

-- July 22, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-22', 1, 'Breakfast', 350, 200, 10, 2, 15, 300, 100, 50, 30, 5, 10),

('2023-07-22', 1, 'Lunch', 550, 400, 20, 5, 25, 500, 200, 70, 45, 8, 15),

('2023-07-22', 1, 'Dinner', 600, 350, 25, 8, 30, 600, 250, 80, 40, 6, 20);

 

-- July 23, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-23', 1, 'Breakfast', 370, 220, 12, 2.5, 18, 280, 110, 45, 32, 6, 8),

('2023-07-23', 1, 'Lunch', 520, 390, 15, 3.5, 28, 520, 210, 75, 39, 9, 20),

('2023-07-23', 1, 'Dinner', 620, 340, 22, 6, 32, 600, 240, 85, 48, 6, 15);

 

-- July 24, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-24', 1, 'Breakfast', 390, 240, 14, 3, 20, 290, 120, 55, 35, 4, 10),

('2023-07-24', 1, 'Lunch', 530, 400, 20, 4, 30, 550, 190, 70, 44, 10, 18),

('2023-07-24', 1, 'Dinner', 680, 360, 24, 7, 38, 630, 270, 95, 50, 8, 20);

 

-- July 25, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-25', 1, 'Breakfast', 320, 200, 10, 2, 15, 260, 100, 50, 30, 6, 12),

('2023-07-25', 1, 'Lunch', 550, 390, 17, 3, 25, 540, 200, 70, 42, 9, 15),

('2023-07-25', 1, 'Dinner', 630, 350, 22, 6, 32, 590, 250, 80, 38, 6, 18);

 

-- July 26, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-26', 1, 'Breakfast', 380, 220, 12, 2.5, 20, 300, 110, 45, 32, 5, 10),

('2023-07-26', 1, 'Lunch', 520, 380, 16, 4, 26, 530, 180, 65, 40, 7, 12),

('2023-07-26', 1, 'Dinner', 670, 340, 23, 7, 36, 620, 230, 90, 48, 6, 15);

 

-- July 27, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-27', 1, 'Breakfast', 340, 190, 10, 2, 15, 280, 100, 50, 30, 6, 12),

('2023-07-27', 1, 'Lunch', 540, 380, 18, 4, 26, 550, 190, 70, 42, 8, 14),

('2023-07-27', 1, 'Dinner', 650, 360, 25, 8, 32, 600, 240, 85, 45, 6, 18);

 

-- July 28, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-28', 1, 'Breakfast', 360, 210, 12, 3, 18, 290, 110, 45, 32, 5, 10),

('2023-07-28', 1, 'Lunch', 540, 380, 17, 4, 25, 540, 200, 70, 42, 9, 15),

('2023-07-28', 1, 'Dinner', 680, 350, 23, 7, 36, 620, 250, 90, 48, 6, 20);

 

-- July 29, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-29', 1, 'Breakfast', 350, 200, 10, 2, 15, 300, 100, 50, 30, 6, 10),

('2023-07-29', 1, 'Lunch', 520, 390, 18, 3.5, 26, 530, 190, 70, 39, 8, 12),

('2023-07-29', 1, 'Dinner', 630, 350, 22, 6, 32, 590, 240, 80, 48, 6, 18);

 

-- July 30, 2023

INSERT INTO meals (date, userId, mealName, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g) VALUES

('2023-07-30', 1, 'Breakfast', 370, 220, 12, 2.5, 20, 310, 110, 45, 32, 4, 10),

('2023-07-30', 1, 'Lunch', 540, 380, 18, 3.5, 28, 540, 190, 70, 40, 7, 15),

('2023-07-30', 1, 'Dinner', 660, 340, 24, 7, 35, 610, 250, 90, 50, 6, 18);

 

 