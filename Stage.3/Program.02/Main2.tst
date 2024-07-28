DECLARE
    v_start_date DATE := TO_DATE('2024-01-01', 'YYYY-MM-DD');
    v_end_date DATE := TO_DATE('2024-12-31', 'YYYY-MM-DD');
    payment_cursor SYS_REFCURSOR;
BEGIN
    display_payments(v_start_date, v_end_date);
    payment_cursor := get_payments_in_period(v_start_date, v_end_date);
END;
/
