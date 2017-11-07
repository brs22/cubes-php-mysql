-- Napisati upit koji ispisuje gradove ali sa redom sledecim informacijama: naziv drzave, naziv regije, naziv grada
SELECT
    `co`.`name` AS `naziv_drzave`,
    `st`.`name` AS `naziv_regije`,
    `ci`.`name` AS `naziv_grada`
FROM
    `cities` AS `ci`
JOIN
    `states` AS `st` ON `st`.`id` = `ci`.`state_id`
JOIN
    `countries` AS `co` ON `co`.`id` = `st`.`country_id`;

-- Napisati upit koji ispipsuje gradove koji imaju populaciju milion ili vise, 
--sortiranim po populaciji opadajuce, sa sledecim informacijama: kratki kod zemlje, naziv zemlje, 
--naziv grada, populacija
SELECT
    `co`.`sortname` AS `kod_drzave`,
    `co`.`name` AS `naziv_drzave`,
    `ci`.`name` AS `naziv_grada`,
    `ci`.`population` AS `populacija`
FROM
    `cities` AS `ci`
JOIN
    `states` AS `st` ON `st`.`id` = `ci`.`state_id`
JOIN
    `countries` AS `co` ON `co`.`id` = `st`.`country_id`
WHERE
    `ci`.`population` >= 1000000
ORDER BY 
    `ci`.`population` DESC;

-- Napisati upit koji prikazuje gradove za koje nije uneta populacija (tj populacija je 0) sa kolonama: 
--naziv drzave, naziv regije, naziv grada
SELECT
    `co`.`name` AS `naziv_drzave`,
    `st`.`name` AS `naziv_regije`,
    `ci`.`name` AS `naziv_grada`
FROM
    `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id` 
WHERE `ci`.`population` = 0;

-- Napisati upit koji prikazuje broj gradova za koje nije uneta populaija
SELECT
    COUNT(`ci`.`id`)
FROM
    `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id` 
WHERE `ci`.`population` = 0;

-- Napisati upit koji prikazuje regije zajedno sa brojem stanovnika u regiji, 
--polja koja se prikazuju su: naziv drzave, naziv regije, broj stanovnika u regiji
SELECT
    `co`.`name` AS `naziv_drzave`,
    `st`.`name` AS `naziv_regije`,
    SUM(`ci`.`population`) AS `broj_stanovnika_u_regiji`
FROM
    `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id`
GROUP BY
    `st`.`name`;  

-- Napisati upit koji pronalazi 10 regija sa najvise stanovnika, 
--polja koja se prikazuju su: naziv drzave, naziv regije, broj stanovnika u regiji
SELECT
    `co`.`name` AS `naziv_drzave`,
    `st`.`name` AS `naziv_regije`,
    SUM(`ci`.`population`) AS `broj_stanovnika_u_regiji`
FROM
    `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id`
GROUP BY
    `st`.`name`
ORDER BY
    SUM(`ci`.`population`) DESC
LIMIT 10;
 
-- Napisati upit koji pronalazi regija sa brojem stanovnika vecim od milion, 
--polja koja se prikazuju su: naziv drzave, naziv regije, broj stanovnika u regiji
SELECT
    `co`.`name` AS `naziv_drzave`,
    `st`.`name` AS `naziv_regije`,
    SUM(`ci`.`population`) AS `broj_stanovnika_u_regiji`
FROM
    `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id`
GROUP BY
    `st`.`name`
HAVING SUM(`ci`.`population`) > 1000000;

-- Napisati upit koji pronalazi 5 regija sa najvise registrovanih gradova, polja koja se prikazuju su: 
--naziv drzave, naziv regije, broj gradova u regiji
SELECT
    `co`.`name` AS `naziv_drzave`,
    `st`.`name` AS `naziv_regije`,
    COUNT(`ci`.`id`) AS `broj_gradova_u_regiji`
FROM
    `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id`
GROUP BY
    `st`.`name`
ORDER BY
    COUNT(`ci`.`id`) DESC
LIMIT 5;

-- Napisati upit koji pronalazi regije sa nijednim unetim gradom (broj gradova je 0), 
--polja koja se prikazuju su: naziv drzave, naziv regije, broj gradova u regiji
SELECT
    `co`.`name` AS `naziv_drzave`,
    `st`.`name` AS `naziv_regije`,
    COUNT(`ci`.`id`) AS `broj_gradova_u_regiji`
FROM
    `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id`    
GROUP BY
    `st`.`name`
HAVING
    COUNT(`ci`.`id`) = 0;

-- Napisati upit koji pronalazi 5 regija sa najvise registrovanih gradova 
--ciji naziv pocinje sa slovom 'r', polja koja se prikazuju su: naziv drzave, naziv regije, broj gradova u regiji
SELECT
    `co`.`name` AS `naziv_drzave`,
    `st`.`name` AS `naziv_regije`,
    COUNT(`ci`.`id`) AS `broj_gradova_u_regiji`
FROM
    `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id`
WHERE
    `ci`.`name` LIKE 'r%'
GROUP BY
    `st`.`name`
ORDER BY
    COUNT(`ci`.`id`) DESC
LIMIT 5;

-- Napisati upit koji pronalazi 5 regija sa najvise milionskih gradova 
--(broje se gradovi sa populacijom vecom od milion), polja koja se prikazuju su: 
--naziv drzave, naziv regije, broj gradova u regiji
SELECT
    `co`.`name` AS `naziv_drzave`,
    `st`.`name` AS `naziv_regije`,
    COUNT(`ci`.`id`) AS `broj_gradova_u_regiji`
FROM
    `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id`
WHERE
    `ci`.`population` > 1000000
GROUP BY
    `st`.`name`
ORDER BY
    COUNT(`ci`.`id`) DESC
LIMIT 5;

-- Napisati upit koji pronalazi drzave koje imaju vise od 100 regija, polja koja se prikazuju su 
--id drzave, kratki kod drzave, naziv drzave i broj regija
SELECT
    `co`.`id` AS `id_drzave`,
    `co`.`sortname` AS `kod_drzave`,
    `co`.`name` AS `drzava`,
    COUNT(`st`.`id`) AS `broj_regija`
FROM
   `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
GROUP BY
    `co`.`name`
HAVING
    COUNT(`st`.`id`) > 100;

-- Napisati upit koji pronalazi drzave koje imaju vise od 10 regija ciji naziv pocinje sa slovom 'a', 
--polja koja se prikazuju su id drzave, kratki kod drzave, naziv drzave i broj regija
SELECT
    `co`.`id` AS `id_drzave`,
    `co`.`sortname` AS `kod_drzave`,
    `co`.`name` AS `drzava`,
    COUNT(`st`.`id`) AS `broj_regija`
FROM
   `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
WHERE
    `st`.`name` LIKE 'a%'
GROUP BY
    `co`.`name`
HAVING
    COUNT(`st`.`id`) > 10;

-- Napisati upit koji prikazuje drzave zajedno sa njihovim brojem stanovnika, 
--sortiranih po broju stanovnika opadajuce, 
--polja koja se prikazuju su id drzave, kratki kod drzave, naziv drzave i broj stanovnika
SELECT
    `co`.`id` AS `id_drzave`,
    `co`.`sortname` AS `kod_drzave`,
    `co`.`name` AS `drzava`,
    SUM(`ci`.`population`) AS `broj_stanovnika_drzave`
FROM
    `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id`
GROUP BY
    `co`.`name`
ORDER BY
    SUM(`ci`.`population`) DESC;

-- Napisati upit koji prolazi drzave koje imaju vise od milion stanovnika, 
--polja koja se prikazuju su id drzave, kratki kod drzave, naziv drzave i broj stanovnika
SELECT
    `co`.`id` AS `id_drzave`,
    `co`.`sortname` AS `kod_drzave`,
    `co`.`name` AS `drzava`,
    SUM(`ci`.`population`) AS `broj_stanovnika_drzave`
FROM
    `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id`
GROUP BY
    `co`.`name`
HAVING
    SUM(`ci`.`population`) > 1000000;

-- Napisati upit koji prikazuje prvih 5 drzava sa najvise milionskih gradova
SELECT
    `co`.`id` AS `id_drzave`,
    `co`.`sortname` AS `kod_drzave`,
    `co`.`name` AS `drzava`,
    COUNT(`ci`.`id`) AS `broj_milionskih_gradova`
FROM
   `countries` AS `co`
JOIN
    `states` AS `st`  ON `co`.`id` = `st`.`country_id`
JOIN 
    `cities` AS `ci` ON `st`.`id` = `ci`.`state_id`
WHERE
    `ci`.`population` > 1000000
GROUP BY
    `co`.`name`
ORDER BY
    COUNT(`ci`.`id`) DESC
LIMIT 5;