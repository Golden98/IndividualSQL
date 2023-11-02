SELECT countries.name, COUNT(ip4.ip) 
    FROM ip4 LEFT JOIN countries ON ip4.country = countries.id 
    GROUP BY countries.name
    ORDER BY COUNT(ip4.ip) DESC
    LIMIT 10;


SELECT cityByCountry.name, COUNT(ip4.ip)
    FROM ip4 LEFT JOIN cityByCountry ON ip4.city = cityByCountry.city
    LEFT JOIN countries ON cityByCountry.country = countries.id
    WHERE countries.name = "UNITED STATES"
    GROUP BY cityByCountry.name
    ORDER BY COUNT(ip4.ip) DESC
    LIMIT 10;
