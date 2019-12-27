DELIMITER $$
CREATE TRIGGER BOOK_BELOW_THRESHOLD
AFTER UPDATE ON BOOK
FOR EACH ROW BEGIN
IF NEW.QUANTITY <10 THEN
INSERT INTO ORDERS (ISBN,QUANTITY,PUBLISHER_NAME) VALUES (old.ISBN,10,old.PUBLISHER_NAME);
END IF;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER BOOK_BELOW_THRESHOLD_INSERTED
AFTER INSERT ON BOOK
FOR EACH ROW BEGIN
IF NEW.QUANTITY <10 THEN
INSERT INTO ORDERS (ISBN,QUANTITY,PUBLISHER_NAME) VALUES (NEW.ISBN,10,NEW.PUBLISHER_NAME);
END IF;
END $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER ACCEPT_ORDER
BEFORE DELETE ON orders
FOR EACH ROW BEGIN
UPDATE BOOK
SET BOOK.QUANTITY=BOOK.QUANTITY+OLD.QUANTITY
WHERE BOOK.ISBN =OLD.ISBN;
END $$
DELIMITER ;