CREATE TABLE Products (
ProductID numeric (15,0) PRIMARY KEY,
CategoryID numeric(1,0),
Name varchar(50),
Rarity numeric(20,0),
Type varchar(50),
Description varchar(750),
Attack numeric(20,0),
Defense numeric(20,0),
Price numeric(20,2),
ImgURL varchar(50));

CREATE TABLE Categories (
CategoryID numeric(1,0) PRIMARY KEY,
CategoryName varchar(50));

CREATE TABLE Customers (
CustomerID numeric(20, 0) PRIMARY KEY,
UserName varchar(50),
Password varchar(50),
FirstName varchar(50),
LastName varchar(50),
Address varchar(50),
City varchar(50),
State varchar(50),
ZIP varchar(50),
Phone varchar(50),
Email varchar(50),
CreditCardNumber varchar(50),
NameOnCard varchar(50),
SecurityNumber varchar(50));

CREATE TABLE Invoices (
InvoiceID varchar(50) PRIMARY KEY,
CustomerID varchar(50));

CREATE TABLE Products_Invoices (
ProductID numeric(3,0),
CategoryID numeric(3,0));

INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (1, 1, 'Blade Armor Ninja' , 4, 'Wind', 'Once per turn: You can detach 1 Xyz Material from this card to target 1 "Ninja" monster you control; it can make a second attack during each Battle Phase this turn.', 2200, 1000, 4.99, 'Images/Products/BladeAmorNinja.jpg');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (2, 1, 'Blues-Eyes White Dragon' , 8, 'Light', 'This legendary dragon is a powerful engine of destruction. Virtually invincible, very few have faced this awesome creature and lived to tell the tale.', 3000, 2500, 4.99, 'Images/Products/BlueEyesWhiteDragon.png');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (3, 3, 'Bottomless Trap Hole' , 0, 'Trap', 'When your opponent Normal Summons, Flip Summons, or Special Summons a monster with an ATK of 1500 or more, the monster is destroyed and removed from play.', 0, 0, 4.99, 'Images/Products/BottomlessTrapHole.png');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (4, 2, 'Dark Hole' , 0, 'Spell', 'Once per turn: You can detach 1 Xyz Material from this card to target 1 "Ninja" monster you control; it can make a second attack during each Battle Phase this turn.', 0, 0, 4.99, 'Images/Products/DarkHole.png');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (5, 1, 'Dark Magician' , 7, 'Dark', 'The ultimate wizard in terms of attack and defense.', 2500, 2100, 4.99, 'Images/Products/DarkMagician.png');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (6, 1, 'Goblindbergh' , 4, 'Earth', 'When this card is Normal Summoned: You can Special Summon 1 level 4 or lower monster from your hand, also, after that, change this card to Defense Position.', 1400, 0, 4.99, 'Images/Products/Goblindbergh');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (7, 1, 'Heroic Challenger - Assault Halberd' , 4, 'Earth', 'If your opponent ontrols a monster and you control no monsters, you can Special Summon this card (from your hand). If this card attacks a Defense Position monster, inflict piercing battle damage to your opponent.  When this card inflicts battle damage to your opponent: You can add 1 "Heroic" card from your Deck to your hand.', 1800, 200, 4.99, 'Images/Products/HeroicChallengerAssualtHalberd.jpg');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (8, 1, 'Heroic Challenger - Double Lance' , 4, 'Earth', 'When this card is Normal Summoned: You can Special Summon 1 "Heroic Challenger - Double Lance" from your hand or Graveyard in face-up Defense Position. This card cannot be used as a Synchro Material Monster. This card connot be used as an Eyz Material, except for the Xyz Summon of a Warrior-Type monster.', 1700, 900, 4.99, 'Images/Products/HeroicChallengerDoubleLance.png');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (9, 1, 'Heroic Challenger - Extra Sword' , 4, 'Earth', 'An Xyz Monster that was Summoned using this card as Xyz Material gains this effect. When it is Xyz Summoned: It gains 1000 ATK.', 1000, 1000, 4.99, 'Images/Products/HeroicChallengerExtraSword.png');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (10, 1, 'Heroic Challenger - Swordshield' , 4, 'Earth', 'During either players turn, if you control a face-up "Heroic" monster: You can send this card from your hand to the Graveyard; for the rest of this turn, you take no Battle Damage and "Heroic" monsters you control cannot be destroyed by battle.', 0, 2000, 4.99, 'Images/Products/HeroicChallengerSwordshield.png');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (11, 1, 'Heroic Challenger - Thousand Blades' , 4, 'Earth', 'Once per turn, if this card is in Attack Position: You can discard 1 "Heroic" card; you cannot Special Summon monsters for the rest of this turn.', 2200, 1000, 4.99, 'Images/Products/ThousandBlades.jpg');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (12, 1, 'Heroic Champion - Gandiva' , 4, 'Earth', 'Once per turn, when a Level 4 or lower monster(s) is Special Summoned to your opponents side of the field detach 1 Xyz Material from this card.', 2100, 1800, 4.99, 'Images/Products/HeroicChapmionGandiva.png');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (13, 1, 'Heroic Champion - Kusangi' , 4, 'Earth', 'One per turn, when a Trap Card is activated: You can detach 1 Xyz material from this card.', 2500, 2400, 4.99, 'Images/Products/HeroicChampionKusanagi.png');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (14, 1, 'Heroic Champion - Clarent' , 4, 'Light', 'Once per turn: You can detach 1 Xyz Material from this card.', 2600, 1700, 4.99, 'Images/Products/HeroicChampionClarent.jpg');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (15, 1, 'Heroic Champion - Excalibur' , 4, 'Light', 'Once per turn: You can detach 2 Xyz Materials from this card; this cards ATK becomes double its original ATK until your opponents next End My Life Phase.', 2000, 2000, 4.99, 'Images/Products/HeroicChampionExcalibur.jpg');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (16, 1, 'Heroic Champion - Rhonogomyniad' , 4, 'Dark', 'During each of the Battle phases you take your laser blaster and set it to stunning cuz you looking fine and thicc AF boiii.', 1500, 1500, 4.99, 'Images/Products/HeroicChampionRhongomyniad.jpg');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (17, 2, 'Heroic Chance' , 0, 'Spell', 'Target 1 face-up "Heroic" monster you control; this turn, double its ATK, but it cannot attack your opponent directly. You can only activate 1 "Heroic Chance" per turn.', 0, 0, 4.99, 'Images/Products/HeroicChance.jpg');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (18, 1, 'Maestroke the Symphony Djinn' , 4, 'Dark', 'Once per turn: You can detach 1 Xyz Material from this card.', 1800, 2300, 4.99, 'Images/Products/MaestroketheSymphonyDjinn.png');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (19, 2, 'Monster Reborn' , 0, 'Spell', 'Target 1 monster in either players Graveyard; Special Summon it.', 0, 0, 4.99, 'Images/Products/MonsterReborn.png');
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (20, 1, 'Number 101: Silent Honor ARK' , 4, 'Water', 'You can detach 2 Xyz Materials from this card, then target 1 Special Summoned monster your opponent controls in face-up Attack Position.', 2100, 1000, 4.99, 'Images/Products/SilentHonorArk.png'); 
INSERT INTO Products (ProductID, CategoryID, Name, Rarity, Type, Description, Attack, Defense, Price, ImgURL) VALUES (21, 1, 'Steelswarm Roach', 4, 'Dark', 'During either players tur, when a Level 5 or higher mosnter would be Special Summoned: You can detach 1 Xyz Material from this card; negate the Special Summon, and if you do, destroy it.', 1900, 0, 4.99, 'Images/Products/SteelswarmRoach.png');

INSERT INTO Categories (CategoryID, CategoryName) VALUES (1, 'Monsters');
INSERT INTO Categories (CategoryID, CategoryName) VALUES (2, 'Spells');
INSERT INTO Categories (CategoryID, CategoryName) VALUES (3, 'Traps');