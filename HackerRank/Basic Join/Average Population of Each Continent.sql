SELECT co.CONTINENT, FLOOR(AVG(ci.POPULATION))
FROM COUNTRY AS co
INNER JOIN CITY AS ci ON co.CODE = ci.COUNTRYCODE
GROUP BY co.CONTINENT