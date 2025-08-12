-- Базовые выборки
-- Таблицы: users(id, name, email, created_at), orders(id, user_id, total, status, created_at)

-- Все пользователи
SELECT id, name, email, created_at FROM users;

-- Пользователи, созданные за последний месяц
SELECT id, name, email
FROM users
WHERE created_at >= DATE('now', '-1 month');

-- Заказы со статусом 'paid'
SELECT id, user_id, total
FROM orders
WHERE status = 'paid';

-- Топ-5 заказов по сумме
SELECT id, user_id, total
FROM orders
ORDER BY total DESC
LIMIT 5;
