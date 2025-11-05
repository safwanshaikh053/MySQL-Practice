/* for loop  ==> simple loop
   while loop ==> while loop
   do while ==> repeat loop */
   
    /* Employee name in UPPER CASE*/
  USE mycompanydb;
  SELECT UPPER(emp_name) FROM employee;
    /* job titles in LOWER CASE*/
  SELECT LOWER(dept_name) FROM company;
     /* COMBINE dept NAME AND dept code*/
SELECT CONCAT(dept_code, ' ', dept_name) FROM company;
	 /* first 4 characters in emp name*/
SELECT SUBSTRING(emp_name, 1, 4) FROM employee; 
      /* first 3 and last 3 characters in emp name*/

SELECT 
    emp_name,
    LEFT(emp_name, 3) AS first_3_chars,
    RIGHT(emp_name, 3) AS last_3_chars
FROM employee;
       
       
       /* replace the word pune with Mumbai*/
	select replace(dept_name,"Network security","NT")from company;


 /*position of @ in employee table*/ 
 
select Email ,locate("@",Email)from Studentsnew;  /* IN safwandb*/


 /* remove spaces from employee name*/ 
select emp_name,trim(emp_name) as trimmed_name from Studentsnew;
 
 
 /Q10/ 
select emp_name,reverse(emp_name) as trimmed_name from employee;

      


