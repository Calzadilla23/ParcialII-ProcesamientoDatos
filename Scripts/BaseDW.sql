CREATE TABLE `dimairline` (
  `Airline_key` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(100)  NOT NULL,
  `nameAirline` varchar(100)  DEFAULT NULL,
  PRIMARY KEY (`Airline_key`)
);

----
CREATE TABLE `dimairport` (
  `airport_key` int(11) NOT NULL AUTO_INCREMENT,
  `AirportID` varchar(50) NOT NULL,
  `nameAirport` varchar(50) NOT NULL,
  PRIMARY KEY (`airport_key`)
);

CREATE TABLE `dimcity` (
  `city_key` int(11) NOT NULL AUTO_INCREMENT,
  `cityID` varchar(50) DEFAULT NULL,
  `nameCity` varchar(50) DEFAULT NULL,
  `nameState` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`city_key`)
)