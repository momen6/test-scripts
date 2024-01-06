/* Formatted on 1/6/2024 11:42:20 PM (QP5 v5.313) */
CREATE TRIGGER display_salary_changes
    BEFORE DELETE OR INSERT OR UPDATE
    ON customers
    FOR EACH ROW
    WHEN (new.id > 0)
DECLARE
    sal_diff   NUMBER;
BEGIN
    sal_diff := :new.salary - :old.salary;
    DBMS_OUTPUT.put_line ('Old salary: ' || :OLD.salary);
    DBMS_OUTPUT.put_line ('New salary: ' || :NEW.salary);
    DBMS_OUTPUT.put_line ('Salary difference: ' || sal_diff);
END;


update customers
set salary = salary + 100
where id = 8;


INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (8, 'momen', 22, 'HP', 9000.00 ); 