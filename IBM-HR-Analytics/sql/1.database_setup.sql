#Creating Database
CREATE DATABASE IF NOT EXISTS hr_analytics;
USE hr_analytics;

#Creating Table
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    Age  INT,
    Attrition  VARCHAR(5),
    BusinessTravel VARCHAR(30),
    DailyRate    INT,
    Department    VARCHAR(30),
    DistanceFromHome  INT,
    Education      INT,
    EducationField            VARCHAR(30),
    EnvironmentSatisfaction  INT,
    Gender                    VARCHAR(10),
    HourlyRate                INT,
    JobInvolvement            INT,
    JobLevel                  INT,
    JobRole                    VARCHAR(40),
    JobSatisfaction            INT,
    MaritalStatus              VARCHAR(15),
    MonthlyIncome               INT,
    MonthlyRate                 INT,
    NumCompaniesWorked          INT,
    OverTime                    VARCHAR(5),
    PercentSalaryHike           INT,
    PerformanceRating           INT,
    RelationshipSatisfaction    INT,
    StockOptionLevel             INT,
    TotalWorkingYears            INT,
    TrainingTimesLastYear        INT,
    WorkLifeBalance               INT,
    YearsAtCompany                INT,
    YearsInCurrentRole            INT,
    YearsSinceLastPromotion       INT,
    YearsWithCurrManager          INT,
    AgeGroup                       VARCHAR(15),
    TenureGroup                    VARCHAR(10)
);

#Imported IBM_HR_Analytical.csv using Table Data Import Wizard

#Checking that data imported 
SELECT COUNT(*) AS total_rows FROM employees;  #returns 1470 rows
SELECT * from employees; #returns all rows
