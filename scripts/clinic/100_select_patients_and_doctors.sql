SELECT d.family_name doctor, p.family_name patients, specialty
FROM doctors d
INNER JOIN patients p
  ON d.id = p.doctor_id
WHERE specialty IN ('Gastroenterology', 'Sports medicine');
