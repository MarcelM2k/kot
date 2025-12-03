CREATE DATABASE Formuła1;

CREATE TABLE Kierowcy ( id INT AUTO_INCREMENT PRIMARY KEY, Imię varchar(25), Nazwisko varchar(25), Narodowość varchar(50), wiek int, Data_Urodzenia date, Start_Kariery date, Zespół varchar(50), numer int(2), ilość_Zwycięstw INT UNIQUE );

CREATE TABLE Zespoły( ID INT AUTO_INCREMENT PRIMARY KEY, nazwa varchar(50), Data_Założenia date, Założyciel Varchar(60), Szef varchar(60), Ilość_Kierowców int, ilość_Zwycięstw int, Ilość_sponsorów int );

CREATE TABLE Sponsorzy( Id INT AUTO_INCREMENT PRIMARY KEY, nazwa varchar(30), kogo_sponsorują varchar(50), data_rozpoczęcia_sponsoringu date );

CREATE TABLE Tory( Id int AUTO_INCREMENT PRIMARY KEY, kraj Varchar(50), Miasto varchar(50), Długość_Toru float, ilość_wyścigów int );

CREATE TABLE Wyścigi( Id INT AUTO_INCREMENT PRIMARY key, data date, Ilość_wypadków int, kto_zwyciężył varchar(50), Najszybsze_okróżenie float, Pogoda Enum('Deszcz', 'Brak deszczu'), ilość_PitStopów INT, Najszybszy_PitStop float );

CREATE table Samochody ( Id INT AUTO_INCREMENT PRIMARY key, zespoły varchar(50), Marka varchar(50), Silnik varchar(50), koła set('białe', 'żółte', 'czerwone', 'niebieskie', 'zielone'), Zawieszenie varchar(50) );

CREATE TABLE Kary( id int AUTO_INCREMENT PRIMARY KEY, Nazwa_kary varchar(50), Przyczyna_kary text, kara_dla varchar(50));

CREATE TABLE Transakcje_od_sponsorów( Id int AUTO_INCREMENT PRIMARY KEY, nawa_sponsora Varchar(50), Dla_zespołu varchar(50), kwota float, data_transakcji date, przyczyna_transakcji text );

CREATE TABLE Badania_Samochodów( id int AUTO_INCREMENT PRIMARY KEY, Zgodzniść_z_regulaminem varchar(25), waga float , tunel_aerodynamiczny varchar(25), przepływ_powietrza varchar(40) );

CREATE TABLE Badania_Kierowców ( id int AUTO_INCREMENT PRIMARY KEY, Imię_nazwisko_kierowcy varchar(50), badania_krwi enum('dobrze', 'źle'), test_wytrzymałości enum('dobrze', 'źle'), Waga_przed float, Waga_po float );


INSERT INTO badania_kierowców (Imię_nazwisko_kierowcy, badania_krwi, test_wytrzymałości, Waga_przed, Waga_po) VALUES ('Lewis Hamilton', 'dobrze', 'dobrze', 72.5, 71.8), ('Max Verstappen', 'dobrze', 'dobrze', 74.0, 73.2), ('Charles Leclerc', 'dobrze', 'źle', 70.3, 69.7), ('Carlos Sainz', 'dobrze', 'dobrze', 72.0, 71.4), ('George Russell', 'źle', 'dobrze', 73.5, 72.9), ('Lando Norris', 'dobrze', 'dobrze', 71.2, 70.6);

INSERT INTO badania_samochodów (Zgodzniść_z_regulaminem, waga, tunel_aerodynamiczny, przepływ_powietrza) VALUES('zgodny', 798.5, 'tak', 'wysoki'), ('zgodny', 801.2, 'nie', 'średni'), ('niezgodny', 820.0, 'tak', 'niski'), ('zgodny', 799.8, 'tak', 'średni'), ('niezgodny', 815.4, 'nie', 'wysoki'), ('zgodny', 805.0, 'tak', 'wysoki');

INSERT INTO kary (Nazwa_kary, Przyczyna_kary, Co_trzeba_zrobić, kara_dla) VALUES('Kara czasowa 5s', 'Przekroczenie limitu prędkości w pit lane', 'Odczekać 5 sekund podczas pit stopu', 'Lewis Hamilton'), ('Kara czasowa 10s', 'Niebezpieczny manewr na torze', 'Odczekać 10 sekund podczas pit stopu', 'Max Verstappen'), ('Przesunięcie o 3 pozycje', 'Blokowanie rywala w kwalifikacjach', 'Start z niższej pozycji', 'Charles Leclerc'), ('Przesunięcie o 5 pozycji', 'Wymiana elementów silnika ponad limit', 'Start z niższej pozycji', 'Carlos Sainz'), ('Kara drive-through', 'Nieprzestrzeganie procedury startowej', 'Przejechać przez pit lane bez zatrzymywania', 'George Russell'), ('Kara dyskwalifikacji', 'Nielegalne elementy aerodynamiczne', 'Usunięcie z wyścigu', 'Lando Norris');

INSERT INTO kierowcy (Imię, Nazwisko, Narodowość, wiek, Data_Urodzenia, Start_Kariery, Zespół, numer, ilość_Zwycięstw) VALUES ('Lewis', 'Hamilton', 'Brytyjczyk', 40, '1985-01-07', '2007-03-18', 'Mercedes', 44, 103), ('Max', 'Verstappen', 'Holender', 28, '1997-09-30', '2015-03-15', 'Red Bull Racing', 1, 60), ('Charles', 'Leclerc', 'Monakijczyk', 28, '1997-10-16', '2018-03-25', 'Ferrari', 16, 6), ('Carlos', 'Sainz', 'Hiszpan', 31, '1994-09-01', '2015-03-15', 'Ferrari', 55, 3), ('George', 'Russell', 'Brytyjczyk', 27, '1997-02-15', '2019-03-17', 'Mercedes', 63, 2), ('Lando', 'Norris', 'Brytyjczyk', 26, '1999-11-13', '2019-03-17', 'McLaren', 4, 1);

INSERT INTO samochody (zespoły, Marka, Silnik, koła, Zawieszenie) VALUES('Mercedes AMG F1', 'Mercedes', 'Mercedes-AMG M14', 'żółte,czerwone', 'hydrauliczne'), ('Red Bull Racing', 'Red Bull', 'Honda RBPT', 'czerwone,niebieskie', 'aktywny'), ('Ferrari', 'Ferrari', 'Ferrari 066/10', 'czerwone', 'standardowe'), ('McLaren', 'McLaren', 'Mercedes-AMG M14', 'żółte,niebieskie', 'hydrauliczne'), ('Aston Martin', 'Aston Martin', 'Mercedes-AMG M14', 'zielone,żółte', 'standardowe'), ('Alpine', 'Renault', 'Renault E-Tech RE23', 'niebieskie', 'aktywny');

INSERT INTO sponsorzy(nazwa, kogo_sponsorują, data_rozpoczęcia_sponsoringu) VALUES ('Petronas', 'Mercedes AMG F1', '2010-01-01'), ('Oracle', 'Red Bull Racing', '2022-02-01'), ('Shell', 'Ferrari', '1996-03-01'), ('Gulf Oil', 'McLaren', '2020-07-01'), ('Aramco', 'Aston Martin', '2021-03-01'), ('BWT', 'Alpine', '2022-02-15');

INSERT INTO tory(kraj, Miasto, Długość_Toru, ilość_wyścigów) VALUES ('Wielka Brytania', 'Silverstone', 5.891, 58), ('Monako', 'Monte Carlo', 3.337, 70), ('Włochy', 'Monza', 5.793, 53), ('Hiszpania', 'Barcelona', 4.675, 66), ('Belgia', 'Spa-Francorchamps', 7.004, 44), ('Japonia', 'Suzuka', 5.807, 53);

INSERT INTO transakcje_od_sponsorów (nawa_sponsora, Dla_zespołu, kwota, data_transakcji, przyczyna_transakcji) VALUES ('Petronas', 'Mercedes AMG F1', 50000000, '2023-01-15', 'Przedłużenie głównego sponsoringu zespołu'), ('Oracle', 'Red Bull Racing', 75000000, '2022-02-01', 'Wsparcie technologiczne i marketingowe'), ('Shell', 'Ferrari', 40000000, '2021-03-10', 'Dostawy paliwa i olejów'), ('Gulf Oil', 'McLaren', 25000000, '2020-07-01', 'Partnerstwo historyczne i marketingowe'), ('Aramco', 'Aston Martin', 60000000, '2021-03-01', 'Rozwój technologii paliwowych'), ('BWT', 'Alpine', 30000000, '2022-02-15', 'Umowa sponsora tytularnego zespołu');

INSERT INTO wyścigi (data, Ilość_wypadków, kto_zwyciężył, Najszybsze_okróżenie, Pogoda, ilość_PitStopów, Najszybszy_PitStop) VALUES ('2025-03-16', 2, 'Max Verstappen', 1.32, 'Brak deszczu', 3, 2.1), ('2025-03-23', 1, 'Lewis Hamilton', 1.31, 'Deszcz', 4, 2.3), ('2025-04-06', 0, 'Charles Leclerc', 1.33, 'Brak deszczu', 2, 2.0), ('2025-04-20', 3, 'Carlos Sainz', 1.34, 'Brak deszczu', 5, 2.4), ('2025-05-04', 1, 'George Russell', 1.32, 'Deszcz', 3, 2.2), ('2025-05-18', 2, 'Lando Norris', 1.31, 'Brak deszczu', 4, 2.1);

INSERT INTO zespoły (nazwa, Data_Założenia, Założyciel, Szef, Ilość_Kierowców, ilość_Zwycięstw, Ilość_sponsorów) VALUES ('Mercedes AMG F1', '2010-01-01', 'Mercedes-Benz', 'Toto Wolff', 2, 125, 8), ('Red Bull Racing', '2005-11-15', 'Dietrich Mateschitz', 'Christian Horner', 2, 120, 7), ('Ferrari', '1950-05-21', 'Enzo Ferrari', 'Frédéric Vasseur', 2, 240, 10), ('McLaren', '1966-03-13', 'Bruce McLaren', 'Andrea Stella', 2, 183, 6), ('Aston Martin', '2021-01-01', 'Lawrence Stroll', 'Mike Krack', 2, 3, 5), ('Alpine', '2021-01-01', 'Renault Group', 'Bruno Famin', 2, 21, 4);









