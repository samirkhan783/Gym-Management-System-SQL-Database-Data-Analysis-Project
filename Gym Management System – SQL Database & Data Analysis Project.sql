SELECT *FROM members
SELECT *
FROM members AS m
INNER JOIN attendance AS a
ON m.member_id = a.member_id;
SELECT *
FROM members AS m
INNER JOIN attendance AS a
ON m.member_id=a.attendance_id;
SELECT m.first_name,p.amount,p.payment_status
FROM Members AS m
INNER JOIN payments AS p
ON m.member_id=p.payment_id
SELECT m.first_name,a.attendance_date,a.check_in,a.check_out
FROM Members AS m
INNER JOIN Attendance AS a
ON m.member_id=a.attendance_id
SELECT 
    mm.record_id,
    m.plan_name,
    m.price,
    mm.status
FROM memberships AS m
INNER JOIN member_memberships AS mm
ON m.membership_id = mm.membership_id;
SELECT m.first_name, ms.plan_name, ms.price, mm.status
FROM members AS m
INNER JOIN member_memberships AS mm
ON m.member_id = mm.member_id
INNER JOIN memberships AS ms
ON mm.membership_id = ms.membership_id;
SELECT
    m.first_name,
    m.last_name,
    ms.plan_name,
    ms.duration_months,
    p.payment_method,
    p.payment_status
FROM members AS m
INNER JOIN member_memberships AS mm
ON m.member_id = mm.member_id
INNER JOIN memberships AS ms
ON mm.membership_id = ms.membership_id
INNER JOIN payments AS p
ON m.member_id = p.member_id
WHERE p.payment_status = 'Paid';
