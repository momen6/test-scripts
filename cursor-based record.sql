/* Formatted on 1/6/2024 11:17:48 PM (QP5 v5.313) */
DECLARE
    CURSOR customer_cur
    IS
        SELECT id, name, age, address, salary FROM customers;

    customer_rec   customer_cur%ROWTYPE;
BEGIN
    OPEN customer_cur;

    LOOP
        FETCH customer_cur INTO customer_rec;

        EXIT WHEN customer_cur%NOTFOUND;
        DBMS_OUTPUT.put_line (
               customer_rec.id
            || ' '
            || customer_rec.name
            || ' '
            || customer_rec.age
            || ' '
            || customer_rec.address
            || ' '
            || customer_rec.salary);
    END LOOP;
END;