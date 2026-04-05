CREATE DATABASE IF NOT EXISTS food_reviews;
USE food_reviews;

CREATE TABLE  User(
    userID INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL
    
);


CREATE TABLE  FoodSpot(
    spotID int PRIMARY KEY,
    picture varchar(255), /* stores the file name dont want to store iamges in database isntead speerate folder to then grab when needed isntead */
    address varchar(255),
    name varchar(255)
);


CREATE TABLE  Review(
    reviewID int PRIMARY KEY,
    rating int, /* assuming users can only rate it 1,2,3,4, or 5 stars only*/
    comment varchar(1000), 
    reviewDate DATETIME,
    userID int,
    spotID int,
    FOREIGN KEY (spotID) REFERENCES FoodSpot(spotID),
    FOREIGN KEY (userID) REFERENCES User(userID)


);
