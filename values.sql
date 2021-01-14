CREATE TABLE `expressfood`.`client` ( `clientId` INT NOT NULL AUTO_INCREMENT , `firstName` VARCHAR(25) NOT NULL , `lastName` VARCHAR(25) NOT NULL , `email` VARCHAR(30) NOT NULL , `phoneNumber` INT(10) NOT NULL , `password` VARCHAR(30) NOT NULL , `balance` DECIMAL(6,2) NOT NULL , PRIMARY KEY (`clientId`)) ENGINE = InnoDB;
CREATE TABLE `expressfood`.`address` ( `addressId` INT NOT NULL AUTO_INCREMENT , `clientId` INT NOT NULL , `city` VARCHAR(30) NOT NULL , `address1` VARCHAR(30) NOT NULL , `address2` VARCHAR(30) NOT NULL , PRIMARY KEY (`addressId`), INDEX (`clientId`)) ENGINE = InnoDB;
CREATE TABLE `expressfood`.`orders` ( `orderId` INT NOT NULL AUTO_INCREMENT , `clientId` INT NOT NULL , `deliverorId` INT NOT NULL , `addressId` INT NOT NULL , `orderAccepted` TINYINT NOT NULL , `orderedAt` DATETIME NOT NULL , `deliveredAt` DATETIME NOT NULL , `deliveryTime` INT NOT NULL , PRIMARY KEY (`orderId`), INDEX (`clientId`), INDEX (`deliverorId`)) ENGINE = InnoDB;
CREATE TABLE `expressfood`.`deliverors` ( `deliverorId` INT NOT NULL AUTO_INCREMENT , `firstName` VARCHAR(25) NOT NULL , `lastName` VARCHAR(25) NOT NULL , `phone` INT(10) NOT NULL , `workArea` VARCHAR(25) NOT NULL , `deliveryHours` DECIMAL(5,2) NOT NULL , PRIMARY KEY (`deliverorId`)) ENGINE = InnoDB;
CREATE TABLE `expressfood`.`dishorder` ( `dishOrderId` INT NOT NULL AUTO_INCREMENT , `dishId` INT NOT NULL , `orderId` INT NOT NULL , `amount` DECIMAL(5,2) NOT NULL , PRIMARY KEY (`dishOrderId`), INDEX (`dishId`), INDEX (`orderId`)) ENGINE = InnoDB;
CREATE TABLE `expressfood`.`dish` ( `dishId` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(25) NOT NULL , `category` VARCHAR(25) NOT NULL , `ingredients` VARCHAR(50) NOT NULL , `description` VARCHAR(255) NOT NULL , `price` DECIMAL(5,2) NOT NULL , `stock` INT NOT NULL , `dishDate` DATE NOT NULL , PRIMARY KEY (`dishId`)) ENGINE = InnoDB;
ALTER TABLE `dish` ADD `prepTime` VARCHAR(25) NOT NULL AFTER `ingredients`;




INSERT INTO `Client`  values(NULL,'james', 'martin','martin@gmail.com','1234567899','james1','50.00');
INSERT INTO `Client`  values(NULL,'Lyla', 'Johnson','lyla@gmail.com','1423453245','lylajo','100.00');
INSERT INTO `Client`  values(NULL,'Toby', 'White','whiteto@gmail.com','1423435253','tobywhite','150.00');
INSERT INTO `Client`  values(NULL,'Macy', 'Drake','drakemacy@gmail.com','1847484253','macyd','200.00');
INSERT INTO `Client`  values(NULL,'Blake', 'Lively','livelyblake@gmail.com','1947484253','blake4','250.00');
INSERT INTO `Client`  values(NULL,'Candy', 'Patton','candypatton@gmail.com','1367484253','candy9','200.00');
INSERT INTO `Client`  values(NULL,'Lucy', 'Jay','jaylucy@gmail.com','1840484253','jayl','100.00');
INSERT INTO `Client`  values(NULL,'Parris', 'Vulton','vult@gmail.com','1127484253','vulton4','200.00');
INSERT INTO `Client`  values(NULL,'Gucci', 'Black','blackgucci@gmail.com','1487484253','guccif','250.00');
INSERT INTO `Client`  values(NULL,'Pat', 'Johns','paty@gmail.com','1847844253','pattJj','300.00');
INSERT INTO `Client`  values(NULL,'Warren', 'Lewis','warrenLewis@gmail.com','1847484257','warrenl','400.00');
INSERT INTO `Client`  values(NULL,'Black', 'Panther','blackpanter@gmail.com','1847684254','ward','200.00');


INSERT INTO `Address` values(NULL,1,'Chicago','64234 Wetin lane','133 jUmob');
INSERT INTO `Address` values(NULL,2,'Chicago','355 Mowry Ave 94538','23 wast Long');
INSERT INTO `Address` values(NULL,3,'Chicago','700 Bellomy St', '700 Belomy Apartment');
INSERT INTO `Address` values(NULL,4,'Chicago','261 University Ave ','34 Ave Noow');
INSERT INTO `Address` values(NULL,5,'Chicago', '35 Lincon St','353 Vaniel Apartments');
INSERT INTO `Address` values(NULL,6,'Chicago','456 Kings St','543 Venice Condo');
INSERT INTO `Address` values(NULL,7,'Chicago','4656 Nitew Ave', '43 Venice Condo');
INSERT INTO `Address` values(NULL,8,'Chicago','6783 Carry St','James Town Hll');
INSERT INTO `Address` values(NULL,9,'Chicago','44646 Chicago Norths', '35545 Nothern Bypass');
INSERT INTO `Address` values(NULL,10,'Chicago','353 Southern C St','6445 Chicac Apartments');
INSERT INTO `Address` values(NULL,11,'Chicago','545 Roosevelt Road','54 Rossies House');
INSERT INTO `Address` values(NULL,12,'Chicago','478 John Ave','53 Long South');

INSERT INTO `Dish` values(NULL,'Ravioli pasta','main','pasta,shrimp,eggs','1 hour','Ravioli pasta is an Italian dish..','50.00',1,'2020-06-01');
INSERT INTO  `Dish`  values(NULL,'Roasted chicken','main','chicken, lemon, herbs','1.5 hour','Roasted chicken is marinated with herbs..','50.00',2,'2020-06-01');
INSERT INTO  `Dish`  values(NULL,'Chocolate mouse','dessert','chocolate,eggs,cream','1 hour','Chocolate mouse is a chocolatey gooeyness..','50.00',3,'2020-06-01');
INSERT INTO  `Dish` values(NULL,'Red velvet cake','dessert','flour,eggs,milk,sugar','1 hour','Red velvet is a velvety dessert..','50.00',4,'2020-06-01');
INSERT INTO  `Dish` values(NULL,'Chicken mouse','main','chicken liver','0.5 hour','Chicken mouse is soft..','50.00',5,'2020-06-01');
INSERT INTO  `Dish` values(NULL,'French fries','mains','flour,eggs,milk,sugar','0.5 hour','French fries are crispy crunchy and soft..','50.00',4,'2020-06-01');
INSERT INTO  `Dish` values(NULL,'Muffins','dessert','flour,eggs,milk,sugar','1 hour','Muffins are a sweet dessert..','50.00',2,'2020-06-01');
INSERT INTO  `Dish` values(NULL,'Cupcakes','dessert','flour,eggs,milk,sugar','1 hour','Cupcakes are yummy ..','50.00',4,'2020-06-01');
INSERT INTO  `Dish` values(NULL,'Pan seared halibut','main','halibut,tomatoes, lettuce,oil','0.5 hour','Pan seared halibut is coated with salt pepper ..','50.00',5,'2020-06-01');
INSERT INTO  `Dish` values(NULL,'Mozzarella pizza','main','flour,tomatoes,mozzarella','1.5 hour','Enjoy yummy gooey pizza..','50.00',6,'2020-06-01');
INSERT INTO  `Dish` values(NULL,'Cheese burger','main','burger, onions,beef, cheese','30 min','We offer the most delicious cheese burgers..','50.00',8,'2020-06-01');
INSERT INTO  `Dish` values(NULL,'Fried chicken','main','flour,spices,chicken','1 hour','Our fried chicken is like no 0ther..','50.00',4,'2020-06-01');




INSERT INTO  `Deliverors` values(NULL,'Carot', 'Maze','0102184093','Chicago East','4.00');
INSERT INTO`Deliverors` values(NULL,'Valeria', 'Zonto','0102987093','Chicago West','3.00');
INSERT INTO `Deliverors` values(NULL,'Mark', 'Palos','0102183245','Chicago North','5.00');
INSERT INTO `Deliverors` values(NULL,'Vince', 'Zuma','0108124093','Chicago South','6.00');
INSERT INTO `Deliverors` values(NULL,'John' ,'Carls','0170124093','Chicago Central','5.00');
INSERT INTO `Deliverors` values(NULL,'Carl', 'Bost','0180124093','Chicago North','2.00');
INSERT INTO `Deliverors` values(NULL,'Patty' ,'Bolt','0176124093','Chicago East','3.00');
INSERT INTO `Deliverors` values(NULL,'Virzion' ,'Rudisha','0104124093','Chicago West','6.00');
INSERT INTO `Deliverors` values(NULL,'Faith', 'Poma','0199124093','Chicago South','5.00');
INSERT INTO `Deliverors` values(NULL,'Juma', 'Vowo','0123124093','Chicago Central','7.00');
INSERT INTO `Deliverors` values(NULL,'Jane', 'Bergs','0125124093','Chicago South','8.00');
INSERT INTO `Deliverors` values(NULL,'Leo', 'Uumen','0155124093','Chicago North','9.00');


INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`) values(NULL,1,2,'50.00');
INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`)  values(NULL,2,3,'100.00');
INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`) values(NULL,3,4,'150.00');
INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`)  values(NULL,4,5,'200.00');
INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`)  values(NULL,5,6,'250.00');
INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`)  values(NULL,6,7,'200.00');
INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`) values(NULL,7,8,'100.00');
INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`)  values(NULL,8,9,'200.00');
INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`)  values(NULL,9,10,'250.00');
INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`)  values(NULL,10,11,'300.00');
INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`) values(NULL,11,12,'400.00');
INSERT INTO `dishorder`(`dishOrderId`, `dishId`, `orderId`, `amount`) values(NULL,12,13,'200.00');

INSERT INTO `Orders`  values(NULL,1,1,1,'1',now(),now(),20);
INSERT INTO `Orders`  values(NULL,2,2,2,'1',now(),now(),20);
INSERT INTO `Orders`  values(NULL,3,3,3,'1',now(),now(),20);
INSERT INTO `Orders`  values(NULL,4,4,4,'1',now(),now(),20);
INSERT INTO `Orders`  values(NULL,5,5,5,'1',now(),now(),20);
INSERT INTO `Orders`  values(NULL,6,6,6,'1',now(),now(),20);
INSERT INTO `Orders`  values(NULL,7,7,7,'1',now(),now(),20);
INSERT INTO `Orders`  values(NULL,8,8,8,'1',now(),now(),20);
INSERT INTO `Orders`  values(NULL,9,9,9,'1',now(),now(),20);
INSERT INTO `Orders`  values(NULL,10,10,10,'1',now(),now(),20);
INSERT INTO `Orders`  values(NULL,11,11,11,'1',now(),now(),20);
INSERT INTO `Orders`  values(NULL,12,12,12,'1',now(),now(),20);
