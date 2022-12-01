# Universe
Development of the celestial bodies database from free code camp (https://www.freecodecamp.org/learn/relational-database/build-a-celestial-bodies-database-project/build-a-celestial-bodies-database)  
## Project guidelines
The project entailed building a relational database for celestial bodies. The project guidelines are as follows;  
You should create a database named universe

- Be sure to connect to your database with \c universe. Then, you should add tables named galaxy, star, planet, and moon  
- Each table should have a primary key  
- Each primary key should automatically increment  
- Each table should have a name column  
- You should use the INT data type for at least two columns that are not a primary or foreign key  
- You should use the NUMERIC data type at least once  
- You should use the TEXT data type at least once  
- You should use the BOOLEAN data type on at least two columns  
- Each "star" should have a foreign key that references one of the rows in galaxy  
- Each "planet" should have a foreign key that references one of the rows in star  
- Each "moon" should have a foreign key that references one of the rows in planet  
- Your database should have at least five tables  
- Each table should have at least three rows  
- The galaxy and star tables should each have at least six rows  
- The planet table should have at least 12 rows  
- The moon table should have at least 20 rows  
- Each table should have at least three columns  
- The galaxy, star, planet, and moon tables should each have at least five columns  
- At least two columns per table should not accept NULL values  
- At least one column from each table should be required to be UNIQUE  
- All columns named name should be of type VARCHAR  
- Each primary key column should follow the naming convention table_name_id. For example, the moon table should have a primary key column named moon_id  
- Each foreign key column should have the same name as the column it is referencing.  

## Reserch and web scrapping
At first, the project was a bit challenging because i was not familar with celestial bodies other than the planets from our solar system and the sum :).
So, obviously i went straight to google and started to try and find out about celestial bodies and what type of a database i can create based on the availabity of data.  

This was quite challenging because there's massive of data from different sites. Putting together the information was really a hustle.
Thanks to the article by *Sri Hartini* (https://medium.com/@sri.hartini/celestial-bodies-database-data-preparation-part-1-23972a94ad70) that helped me get an idea on how to structure my database.

After long hours of reaserch and making sense of the data, i ended up using the following websites, of which i scapped my tables from;
- Constallations table - https://en.wikipedia.org/wiki/IAU_designated_constellations 
- Galaxy table - https://en.wikipedia.org/wiki/List_of_nearest_galaxies
- Star table - https://en.wikipedia.org/wiki/List_of_multiplanetary_systems
- Planet table - https://en.wikipedia.org/wiki/Lists_of_planets (selected each planet to get more information)
- Moon table - https://littleastronomy.com/moon-names/

I scrapped all the required data from the web to excel, see https://www.octoparse.com/blog/scraping-data-from-website-to-excel for scrapping data from website.
I chose to manualy create the tables and insert data into tables and i taken the top 6 closest start from our solar system (by distance) and age both ascending orde Then from this it was eaiser to link constellations of which the stars belong to; 
the galaxies in those constellations ; planets orbiting the top six stars ; and moons that are orbiting those planets.  

THEN VIOLAH i created my database :), hope you enjoyed this. 
