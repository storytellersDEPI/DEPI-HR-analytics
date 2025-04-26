-- Create the database
CREATE DATABASE hr_database;
\c hr_database;

-- Table for Dim_EducationLevel
CREATE TABLE dim_educationLevel (
    EducationLevelID INT PRIMARY KEY,
    EducationLevel VARCHAR(100)
);

-- Table for Dim_Employee
CREATE TABLE dim_employee (
    EmployeeID VARCHAR(20) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(20),
    Age INT,
    BusinessTravel VARCHAR(50),
    Department VARCHAR(100),
    DistanceFromHome_KM INT,
    State VARCHAR(10),
    Ethnicity VARCHAR(100),
    EducationLevelID INT,
    EducationField VARCHAR(100),  
    JobRole VARCHAR(100),
    MaritalStatus VARCHAR(50),
    Salary INT,
    StockOptionLevel INT,
    OverTime VARCHAR(10),
    HireDate DATE,
    Attrition VARCHAR(10),
    YearsAtCompany INT,
    YearsInMostRecentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT,
    FOREIGN KEY (EducationLevelID) REFERENCES Dim_EducationLevel(EducationLevelID)
);

-- Table for fact_PerformanceRating
CREATE TABLE fact_PerformanceRating (
    PerformanceID VARCHAR(10) PRIMARY KEY,
    EmployeeID VARCHAR(20),
    ReviewDate DATE,
    EnvironmentSatisfaction INT,
    JobSatisfaction INT,
    RelationshipSatisfaction INT,
    TrainingOpportunitiesWithinYear INT,
    TrainingOpportunitiesTaken INT,
    WorkLifeBalance INT,
    SelfRating INT,
    ManagerRating INT,
    FOREIGN KEY (EmployeeID) REFERENCES fact_Employee(EmployeeID)
);

-- Table for Dim_RatingLevel
CREATE TABLE dim_ratingLevel (
    RatingID INT PRIMARY KEY,
    RatingLevel VARCHAR(50)
);

-- Table for Dim_SatisfiedLevel
CREATE TABLE dim_satisfiedLevel (
    SatisfactionID INT PRIMARY KEY,
    SatisfactionLevel VARCHAR(50)
);
