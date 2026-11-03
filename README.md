# OrderFlow AI – Design Doc v0

## 1. Problem
An order management and payments platform where customers place orders,
pay online, and track status. An AI copilot helps customers and support staff.

## 2. User stories
1. As a customer, I can sign up and log in.
2. As a customer, I can browse products and add them to a cart.
3. TODO: placing an order
4. TODO: paying for an order
5. TODO: support staff checking why a payment failed

## 3. Order states
CREATED → PAYMENT_PENDING → PAID → SHIPPED → DELIVERED
Side paths: CANCELLED (before shipping), REFUNDED (after payment)
TODO: write one line on when each transition happens

## 4. Tables
- users (id, name, email, password_hash, role, created_at)
- products (id, name, price, stock, image_url)
- orders (TODO: columns)
- order_items (TODO: columns)
- payments (TODO: columns, include an idempotency_key)

## 5. Services
user, product, order, payment, notification, ai-copilot