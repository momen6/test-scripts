/* Formatted on 1/6/2024 10:46:26 PM (QP5 v5.313) */
DECLARE
    c_id        customers.id%TYPE;
    c_name      customers.name%TYPE;
    c_age       customers.age%TYPE;
    c_address   customers.address%TYPE;
    c_salary    customers.salary%TYPE;

    CURSOR c_customers
    IS
        SELECT id, name, age, address, salary FROM customers;
BEGIN
    OPEN c_customers;

    LOOP
        FETCH c_customers
            INTO c_id,
                 c_name,
                 c_age,
                 c_address,
                 c_salary;

        EXIT WHEN c_customers%NOTFOUND;
        DBMS_OUTPUT.put_line (
               'customer: '
            || c_name
            || ' age: '
            || c_age
            || ' address: '
            || c_address
            || ' salary: '
            || c_salary);
    END LOOP;

    CLOSE c_customers;
END;