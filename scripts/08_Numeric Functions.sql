/* ============================================================================== 
   SQL Number Functions Guide
-------------------------------------------------------------------------------
   This document provides an overview of SQL number functions, which allow 
   performing mathematical operations and formatting numerical values.

   Table of Contents:
     1. Rounding Functions
        - ROUND
     2. Absolute Value Function
        - ABS
=================================================================================
*/

/* ============================================================================== 
   ROUND() - Rounding Numbers
================================================= */
SELECT 3.587,
ROUND(3.587,2) AS ROUND_2,
ROUND(3.547,1) AS ROUND_1,
ROUND(3.547,1) AS ROUND_0

/*ABS :ABSOLUTE ============================*/
-- Demonstrate absolute value function
SELECT 
    -10 AS original_number,
    ABS(-10) AS absolute_value_negative,
    ABS(10) AS absolute_value_positive
