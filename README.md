# 🎬 Netflix Data Analysis Dashboard  

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg" width="200"/>
</p>

---

## 🚀 Project Overview
This project presents a comprehensive **end-to-end data analysis of Netflix’s content library** using **SQL, Excel, and Power BI**.

The primary objective is to transform raw, unstructured data into meaningful insights that can support **business decision-making**. The project demonstrates the complete analytics workflow including **data extraction, cleaning, transformation, modeling, and visualization**.

---

## 🎯 Objectives
- Analyze the growth of Netflix content over time  
- Identify the most popular genres and categories  
- Understand country-wise content contribution  
- Explore audience targeting through rating analysis  
- Build an interactive dashboard for business insights  

---

## 🛠️ Tools & Technologies

| Tool        | Purpose |
|------------|--------|
| 🗄️ SQL      | Querying and extracting insights from raw data |
| 📊 Excel    | Data cleaning, preprocessing, and formatting |
| 📈 Power BI | Data modeling, visualization, and dashboard creation |
| ⚡ DAX      | Creating calculated measures and KPIs |

---

## 📊 Key Metrics (KPIs)

- 🎬 **Total Titles**  
  Represents the total number of content entries available in the dataset.

- 🎥 **Total Movies**  
  Indicates the total number of movies available on Netflix.

- 📺 **Total TV Shows**  
  Indicates the total number of TV shows available.

- 🌍 **Total Countries**  
  Shows the number of unique countries contributing content.

---

## 📌 DAX Measures (Detailed Explanation)

```DAX
Total Titles = COUNTROWS(netflix)

➡️ This measure counts the total number of rows in the dataset, representing the total number of titles available on Netflix. It serves as a base KPI for overall content size.


Total Movies = 
CALCULATE(
    COUNTROWS(netflix), 
    netflix[type] = "Movie"
)

➡️ This measure uses the CALCULATE function to apply a filter on the dataset where the content type is "Movie". It then counts the rows to return the total number of movies.


Total TV Shows = 
CALCULATE(
    COUNTROWS(netflix), 
    netflix[type] = "TV Show"
)


➡️ Similar to the movies measure, this filters the dataset for "TV Show" and calculates the total number of TV shows available.


Total Countries = DISTINCTCOUNT(netflix[country])


➡️ This measure calculates the number of unique countries in the dataset, helping analyze Netflix’s global content distribution.

```

## 🔄 Data Cleaning & Transformation

### 📊 Excel Processing
- Removed duplicate records to ensure data accuracy  
- Handled missing/null values in important columns  
- Standardized column formats for consistency  
- Performed initial data validation checks  

---

### ⚙️ Power Query (Power BI)

To handle multi-value genre data:

1. Selected the `listed_in` column  
2. Used **Split Column → By Delimiter (comma)** to separate multiple genres  
3. Selected all newly created columns  
4. Applied **Unpivot Columns** to normalize the dataset  
5. Renamed the resulting column to **Genre**

➡️ This transformation ensures that each genre is stored in a separate row, enabling accurate aggregation and analysis.

---

## 📈 Dashboard Features & Detailed Explanation

### 📊 Content Growth Over Time (Line Chart)
This visualization shows how the number of titles released on Netflix has changed over the years. It helps identify trends, growth phases, and periods of rapid expansion.

---

### 🎥 Movies vs TV Shows (Pie/Donut Chart)
Displays the proportion of movies compared to TV shows, providing a quick understanding of content type distribution on Netflix.

---

### 🎭 Top Genres (Bar Chart)
Highlights the most frequently occurring genres in the dataset. This helps identify dominant content categories and audience preferences.

---

### 🌍 Top Countries (Bar Chart)
Shows which countries produce the highest number of Netflix titles, giving insight into regional contributions.

---

### 🗺️ Global Content Map
A geographical representation of content distribution across different countries, making it easier to visualize global reach.

---

### ⭐ Ratings Distribution (Bar Chart)
Breaks down content by ratings such as TV-MA, PG, etc., helping analyze the target audience and content maturity levels.
