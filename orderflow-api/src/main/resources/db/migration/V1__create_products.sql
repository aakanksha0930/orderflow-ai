CREATE TABLE products (
    id          BIGSERIAL PRIMARY KEY,
    name        VARCHAR(150)  NOT NULL,
    description VARCHAR(1000),
    category    VARCHAR(50)   NOT NULL,
    price       NUMERIC(10,2) NOT NULL CHECK (price > 0),
    stock       INT           NOT NULL CHECK (stock >= 0),
    version     BIGINT        NOT NULL DEFAULT 0,
    created_at  TIMESTAMPTZ   NOT NULL DEFAULT now(),
    updated_at  TIMESTAMPTZ   NOT NULL DEFAULT now()
);
CREATE INDEX idx_products_category ON products(category);