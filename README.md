# 🎬 Netflix Data Analysis Dashboard  

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg" width="200"/>
</p>

## 🚀 Project Overview
This project presents an end-to-end **Netflix Data Analysis** using **SQL, Excel, and Power BI** to uncover valuable insights from Netflix's content library.

The analysis focuses on understanding:
- Content growth trends 📈  
- Genre popularity 🎭  
- Country-wise distribution 🌍  
- Audience targeting 🎯  

---

## 🛠️ Tools & Technologies
| Tool        | Purpose |
|------------|--------|
| 🗄️ SQL      | Data extraction & analysis |
| 📊 Excel    | Data cleaning & preprocessing |
| 📈 Power BI | Dashboard & visualization |
| ⚡ DAX      | KPI calculations |

---

## 📊 Key Metrics (KPIs)

- 🎬 **Total Titles**  
- 🎥 **Total Movies**  
- 📺 **Total TV Shows**  
- 🌍 **Total Countries**  

### 📌 DAX Measures
```DAX
Total Titles = COUNTROWS(netflix)

Total Movies = 
CALCULATE(
    COUNTROWS(netflix), 
    netflix[type] = "Movie"
)

Total TV Shows = 
CALCULATE(
    COUNTROWS(netflix), 
    netflix[type] = "TV Show"
)

Total Countries = DISTINCTCOUNT(netflix[country])
