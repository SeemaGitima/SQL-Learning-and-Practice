/*=============================================================================
   SQL String Functions
-------------------------------------------------------------------------------
   This document provides an overview of SQL string functions, which allow 
   manipulation, transformation, and extraction of text data efficiently.
-------------------------------------------------------------------------------
   Table of Contents:
     1. Manipulations
        - CONCAT
        - LOWER
        - UPPER
	- TRIM
	- REPLACE
     2. Calculation
        - LEN
     3. Substring Extraction
        - LEFT
        - RIGHT
        - SUBSTRING
-------------------------------------------------------------------------------
Functions : A built in SQL code:
- accepts an input value.
- processes it.
- returns an output value.

Nested funtions : function used inside 
another function.

1. Single - Row Functions 
String funtion , numeric function , Date&
Time, NULL functions
2. Multi - Row Functions
Aggregate functions, window functions

=============================================================================== 
   CONCAT() - String Concatenation
=============================================================================== 
CONCAT :combines multiple strings into one.
 1. Concatenate first name and country 
 into one column
 =============================================================================
 */
  SELECT 
 first_name,
 country, CONCAT(first_name,'-', country) AS name_country
 FROM
 customers

 /* UPPER & LOWER : combines all characters to
 lowercase/uppercase.
2. Convert the first name to lowercase. */
SELECT
first_name,
LOWER(first_name) AS Low_name
FROM
customers

/* 3. Convert the first name to uppercase. */
SELECT
first_name,
UPPER(first_name) AS Up_name
FROM
customers

/* TRIM : Removes leading and trailing spaces.
4. Find customers whose first anme contains
leading or trailing spaces */
SELECT
first_name,
LEN(first_name) AS len_name,
LEN(TRIM(first_name)) AS TRIM_len,
LEN(first_name) - LEN(TRIM(first_name)) flag
FROM customers
WHERE LEN(first_name) != LEN(TRIM(first_name))

/* Replace : Replaces specific character with 
a new character.
5.Remove dashes(-) from a phone number.*/
	SELECT 
	'123-456-7890' AS Phone,
	REPLACE ('123-456-7890' , '-', '') AS clean_phone
	
--Calculation Function : LEN : counts how many
--characters.
 --Calulate the length of each customer's first name.
 SELECT 
 first_name,
 LEN(first_name) AS Len_name
 FROM customers

--String Extraction : LEFT
--Extracts specific number of characters from the start.
--RIGHT : Extracts specific number of characters from the end.
--Retrieve the first two characters of each
--first name.
SELECT 
first_name,
LEFT(TRIM(first_name), 2)  AS first_2_char
FROM customers

--Retrieve the last two characters of each
--first name.
SELECT 
first_name,
RIGHT(TRIM(first_name), 2)  AS first_2_char
FROM customers

/*===============================================
Substring : Extracts a part of string at a
specified position.
=================================================
Retrieve a list of customer's first names removing
the first character.
================================================*/
SELECT 
first_name,
SUBSTRING(TRIM(first_name),2,LEN(first_name)) AS sub_name
FROM customers