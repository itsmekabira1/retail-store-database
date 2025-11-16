CREATE INDEX idx_category ON products (category_id);
CREATE INDEX idx_supplier ON products (supplier_id);
EXPLAIN SELECT * FROM products WHERE supplier_id = 2;
