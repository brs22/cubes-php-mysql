-- Zadatak: Napisati upit za unos jednog proizvoda
    INSERT INTO `products`
    (brand, title, description, specification, price, quantity, category, on_sale, discount, tags, created_at)
    VALUES
    ('Apple', 'iPhone6 S', 'iPhone6 S', '', 39999.99, '12.00', 'Mobilni Telefon', 0, 0, NULL, '2016-10-10 18:00:00');

-- Zadatak: Napisati upit za unpos vise proizvoda
INSERT INTO `products`
(brand, title, description, specification, price, quantity, category, on_sale, discount, tags, created_at)
VALUES
('Apple', 'iPhone5', 'iPhone5', '', 41999.99, '17.00', 'Mobilni Telefon', 0, 0, '', '2016-04-07 19:00:00'),
('Apple', 'iPhone6 SE', 'iPhone6 SE', '', 52999.99, '14.00', 'Mobilni Telefon', 0, 0, NULL, '2016-11-02 15:00:00');