CREATE OR REPLACE TRIGGER trg_cliente_numero
BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
   IF :NEW.numero IS NULL OR TRIM(:NEW.numero) = '' THEN
      :NEW.numero := 's/n';
   END IF;
END;
/
