CREATE DATABASE Course

USE Course

CREATE TABLE Students
(
	ID INT PRIMARY KEY IDENTITY,
	Fullname NVARCHAR(30) NOT NULL,
	Email NVARCHAR(20) UNIQUE,
	Point TINYINT CHECK(Point>=0 AND Point<=100)
)

INSERT INTO Students
VALUES
('Alex Johnson','alex.john@email.com',78),
('Ryan Smith','ryann.s@gmail.com',90),
('Mia Rodriguez','mia8@code.edu.az',23),
('Ethan Taylor','taylor.eth@email.com',56),
('Zia Davis','ziah1@mail.ru',87),
('Olivia Brown','olivyb@gmail.com',43),
('Liam Martinez','liam.m@email.com',16),
('Ava Wilson','avaw1ls0n@mail.ru',65),
('Noah Anderson','noah66@code.edu.az',34)



SELECT * FROM Students

--Point dəyəri bütün tələbə pointlərinin ortalamasından böyük olan tələbəli select edən query

SELECT * FROM Students
WHERE Point > (SELECT AVG(Point) FROM Students)

--Students datalarını Id, Name,Point columnları kimi select edən 
--query (burada fullname-i substring edib as Name kimi select edin)

SELECT ID,(SUBSTRING(Fullname,1,CHARINDEX(' ',Fullname))) AS [Name],Point FROM Students

--Student datalarının email domainlərini (@-dən sonraki hissə) select edən query
SELECT SUBSTRING(Email,CHARINDEX('@',Email)+1,LEN(Email)) AS Domain FROM Students

