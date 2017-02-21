ALTER TABLE employee
ADD CONSTRAINT min_salary CHECK (salary > 20000 );

ALTER TABLE car 
ADD CONSTRAINT min_acc CHECK (acceleration > 0.0);
