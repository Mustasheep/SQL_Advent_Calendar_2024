SELECT guest_name
FROM guests
LEFT JOIN guest_gifts ON guests.guest_id = guest_gifts.guest_id
WHERE guest_gifts.guest_id IS NULL;

-- A utilização do LEFT JOIN apresenta apenas os resultados da primeira tabela (guests)
-- WHERE identifica os valores da segunda tabela (guest_gifts) que retornam valor nulo
