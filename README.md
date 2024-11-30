# Crowdfunding_ETL

## Project Overview
This repository contains the Crowdfunding_ETL project, which involves extracting, transforming, and loading data related to crowdfunding campaigns and contacts. The project utilizes Python, Jupyter Notebook, and other data manipulation tools to perform ETL operations on provided datasets.

---

## Setup Instructions

### **Before You Begin**
1. **Create a New Repository**:
   - Have one group member create a new GitHub repository named **`Crowdfunding_ETL`** for this project.
   - Add your partner as a collaborator to the repository.

2. **Clone the Repository**:
   - Clone the newly created repository to your local computer using:
     ```bash
     git clone <repository_url>
     ```

3. **Rename the Starter Notebook**:
   - One person should rename the `ETL_Mini_Project_starter_code.ipynb` file using the first initial and last name of each group member. 
   - For example:
     ```
     ETL_Mini_Project_NRomanoff_JSmith.ipynb
     ```

4. **Add Files to the Repository**:
   - Add the following files to your repository:
     - The renamed Jupyter Notebook file.
     - The `Resources` folder containing:
       - `crowdfunding.xlsx`
       - `contacts.xlsx`
   - Commit and push these changes to GitHub:
     ```bash
     git add .
     git commit -m "Add renamed notebook and resources folder"
     git push origin main
     ```

5. **Collaborator Pull Changes**:
   - The other group member should pull the changes to ensure both members have the same notebook and resources on their local computers:
     ```bash
     git pull origin main
     ```

---

## Project Workflow

### **Working on Deliverables**
- Divide the project deliverables among group members as needed. 
- Each member may create and work on their individual notebooks to complete specific sections of the ETL process.
- Use descriptive naming for additional notebooks to track progress.

### **Combining Work**
- Once all deliverables are complete, combine all subsections into the final notebook:
  - **`ETL_Mini_Project.ipynb`**

- Commit and push the final version of the notebook:
  ```bash
  git add ETL_Mini_Project.ipynb
  git commit -m "Combine and finalize ETL project notebook"
  git push origin main
  ```
# Crowdfunding_ETL: Instructions

This mini project is divided into multiple subsections to guide you through creating and organizing data for the Crowdfunding ETL process. Follow the steps below to complete each section.

---

## Subsections Overview

1. **Create the Category and Subcategory DataFrames**
2. **Create the Campaign DataFrame**
3. **Create the Contacts DataFrame**
4. **Create the Crowdfunding Database**

---

## **1. Create the Category and Subcategory DataFrames**

### **Step 1: Extract and Transform the `category` Data**

- Extract data from the `crowdfunding.xlsx` Excel file.
- Transform the data to create a `category` DataFrame with the following columns:
  1. **`category_id`**:
     - Sequential entries from `"cat1"` to `"catn"`, where `n` is the number of unique categories.
  2. **`category`**:
     - Contains only the category titles.

#### **Example**
| category_id | category         |
|-------------|------------------|
| cat1        | Technology       |
| cat2        | Music            |
| cat3        | Film & Video     |

### **Export to CSV**
- Export the `category` DataFrame as `category.csv`.
- Save the file to your GitHub repository in the `Resources` folder.

---

### **Step 2: Extract and Transform the `subcategory` Data**

- Extract data from the `crowdfunding.xlsx` Excel file.
- Transform the data to create a `subcategory` DataFrame with the following columns:
  1. **`subcategory_id`**:
     - Sequential entries from `"subcat1"` to `"subcatn"`, where `n` is the number of unique subcategories.
  2. **`subcategory`**:
     - Contains only the subcategory titles.

#### **Example**
| subcategory_id | subcategory    |
|----------------|----------------|
| subcat1        | Gadgets        |
| subcat2        | Wearables      |
| subcat3        | Indie Rock     |

### **Export to CSV**
- Export the `subcategory` DataFrame as `subcategory.csv`.
- Save the file to your GitHub repository in the `Resources` folder.

---

### **2. Push Changes to GitHub**
- Commit and push the following changes to the repository:
  - `category.csv`
  - `subcategory.csv`

### **Example Commit Message**
```bash
git add Resources/category.csv Resources/subcategory.csv
git commit -m "Add category and subcategory DataFrames"
git push origin main
```

# Creating the Campaign DataFrame

This section provides instructions for extracting and transforming data from `crowdfunding.xlsx` to create the `campaign` DataFrame with the required columns and formatting.

---

## **Steps to Create the Campaign DataFrame**

### **1. Extract Data from `crowdfunding.xlsx`**
- Load the data from the `crowdfunding.xlsx` file using a Python library like `pandas`.
  ```python
  import pandas as pd

  # Load the crowdfunding data
  crowdfunding_data = pd.read_excel("Resources/crowdfunding.xlsx", sheet_name="crowdfunding_data")
  ```

## **2. Transform the Data**

### **Column Transformations**

1. **`cf_id`**:
   - Directly extract the unique campaign IDs from the data.

2. **`contact_id`**:
   - Extract the contact IDs corresponding to each campaign.

3. **`company_name`**:
   - Extract the company names from the data.

4. **`blurb` → `description`**:
   - Rename the `blurb` column to `description`.

5. **`goal`**:
   - Convert the `goal` column to the `float` data type.

6. **`pledged`**:
   - Convert the `pledged` column to the `float` data type.

7. **`outcome`**:
   - Extract the campaign outcome (e.g., "successful," "failed").

8. **`backers_count`**:
   - Extract the count of backers for each campaign.

9. **`country`**:
   - Extract the campaign's country.

10. **`currency`**:
    - Extract the currency used for the campaign.

11. **`launched_at` → `launch_date`**:
    - Rename the `launched_at` column to `launch_date`.
    - Convert the UTC timestamps to `datetime` format:
      ```python
      crowdfunding_data["launch_date"] = pd.to_datetime(crowdfunding_data["launched_at"], unit="s")
      ```

12. **`deadline` → `end_date`**:
    - Rename the `deadline` column to `end_date`.
    - Convert the UTC timestamps to `datetime` format:
      ```python
      crowdfunding_data["end_date"] = pd.to_datetime(crowdfunding_data["deadline"], unit="s")
      ```

13. **`category_id`**:
    - Map categories in the campaign data to their unique `category_id` from the `category` DataFrame.

14. **`subcategory_id`**:
    - Map subcategories in the campaign data to their unique `subcategory_id` from the `subcategory` DataFrame.

---

## **3. Create the Campaign DataFrame**

- Combine the transformed columns to create the `campaign` DataFrame:
  ```python
  campaign_df = crowdfunding_data[[
      "cf_id", "contact_id", "company_name", "blurb", "goal", "pledged",
      "outcome", "backers_count", "country", "currency", "launch_date", "end_date",
      "category_id", "subcategory_id"
  ]].rename(columns={"blurb": "description"})
  ```

# Creating the Contacts DataFrame

This README outlines the steps to create the `contacts` DataFrame from the `contacts.xlsx` file. You can choose one of two methods for extracting and transforming the data: **Python dictionary methods** or **regular expressions**.

---

## **Steps to Create the Contacts DataFrame**

### **Option 1: Using Python Dictionary Methods**

1. **Import the File**:
   - Load the `contacts.xlsx` file into a DataFrame:
     ```python
     import pandas as pd
     contacts_data = pd.read_excel("Resources/contacts.xlsx")
     ```

2. **Iterate Through the DataFrame**:
   - Convert each row of the DataFrame into a dictionary:
     ```python
     contacts_list = [row.to_dict() for _, row in contacts_data.iterrows()]
     ```

3. **Extract Values**:
   - Use a list comprehension to extract the dictionary values and store them in a new list:
     ```python
     extracted_data = [[value for value in row.values()] for row in contacts_list]
     ```

4. **Create a New DataFrame**:
   - Use the extracted data to create a new DataFrame:
     ```python
     columns = ["contact_id", "name", "email"]
     contacts_df = pd.DataFrame(extracted_data, columns=columns)
     ```

5. **Split Names**:
   - Split the `name` column into `first_name` and `last_name`:
     ```python
     contacts_df[["first_name", "last_name"]] = contacts_df["name"].str.split(" ", 1, expand=True)
     contacts_df.drop(columns=["name"], inplace=True)
     ```

6. **Clean and Export**:
   - Clean the DataFrame as necessary, and export it to `contacts.csv`:
     ```python
     contacts_df.to_csv("Resources/contacts.csv", index=False)
     ```

---

### **Option 2: Using Regular Expressions**

1. **Import the File**:
   - Load the `contacts.xlsx` file into a DataFrame:
     ```python
     import pandas as pd
     import re
     contacts_data = pd.read_excel("Resources/contacts.xlsx")
     ```

2. **Extract Columns**:
   - Use regular expressions to extract `contact_id`, `name`, and `email`:
     ```python
     contacts_data["contact_id"] = contacts_data["Raw Data"].str.extract(r"(\d+)")
     contacts_data["name"] = contacts_data["Raw Data"].str.extract(r"Name: ([A-Za-z\s]+)")
     contacts_data["email"] = contacts_data["Raw Data"].str.extract(r"Email: (\S+@\S+)")
     ```

3. **Create a New DataFrame**:
   - Create a DataFrame with the extracted data:
     ```python
     contacts_df = contacts_data[["contact_id", "name", "email"]]
     ```

4. **Convert Data Types**:
   - Convert the `contact_id` column to the integer type:
     ```python
     contacts_df["contact_id"] = contacts_df["contact_id"].astype(int)
     ```

5. **Split Names**:
   - Split the `name` column into `first_name` and `last_name`:
     ```python
     contacts_df[["first_name", "last_name"]] = contacts_df["name"].str.split(" ", 1, expand=True)
     contacts_df.drop(columns=["name"], inplace=True)
     ```

6. **Clean and Export**:
   - Clean the DataFrame as necessary, and export it to `contacts.csv`:
     ```python
     contacts_df.to_csv("Resources/contacts.csv", index=False)
     ```

---

## **Verify the Final DataFrame**

The final DataFrame should resemble the following structure:

| contact_id | first_name | last_name | email                     |
|------------|------------|-----------|---------------------------|
| 1          | John       | Doe       | john.doe@example.com      |
| 2          | Jane       | Smith     | jane.smith@example.com    |

---

## **Push the DataFrame to GitHub**

1. Add the `contacts.csv` file to your repository:
   ```bash
   git add Resources/contacts.csv
   ```

# Creating the Crowdfunding Database

This section provides the instructions for designing, creating, and populating the Crowdfunding database.

---

## **Steps**

1. **Inspect CSV Files**:
   - Review the following files:
     - `category.csv`
     - `subcategory.csv`
     - `campaign.csv`
     - `contacts.csv`

2. **Sketch the ERD**:
   - Use QuickDBD to sketch an Entity-Relationship Diagram (ERD) of the database tables, ensuring all relationships and keys are defined.

3. **Create the Table Schema**:
   - Based on the ERD, define the table schema for each CSV file.
   - Specify:
     - Data types
     - Primary keys
     - Foreign keys
     - Other constraints
   - Save the schema in a file named `crowdfunding_db_schema.sql`.

4. **Save to GitHub**:
   - Commit and push the `crowdfunding_db_schema.sql` file to the GitHub repository.

5. **Create the Database**:
   - Create a new PostgreSQL database named `crowdfunding_db`.
