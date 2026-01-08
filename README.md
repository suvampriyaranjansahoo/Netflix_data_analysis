# 📊 Netflix Content Analysis & Forecasting Project

## 📌 Project Overview

This project performs an end-to-end **data analytics, visualization, and predictive modeling** study on Netflix’s content catalog. The objective is to uncover trends in movies and TV shows, analyze genre and country contributions, and forecast future content growth using statistical and machine learning techniques.

The solution combines **Python-based analytics**, **interactive visualizations**, and a **Power BI dashboard** to deliver business-oriented insights useful for strategic decision-making.

---

## 🎯 Business Objectives

* Analyze the evolution of Netflix content over time
* Identify top genres and contributing countries
* Forecast future content trends (Movies vs TV Shows)
* Apply machine learning to predict content genres
* Support content acquisition and regional expansion strategies

---

## 🧰 Tech Stack & Tools

* **Programming Language:** Python
* **Libraries:** Pandas, Matplotlib, Seaborn, Plotly, Scikit-Learn, Statsmodels
* **Machine Learning:** Random Forest Classifier
* **Time Series Forecasting:** ARIMA
* **Visualization:** Power BI, Plotly (Choropleth)
* **IDE:** Google Colab / Jupyter Notebook

---

## 📂 Project Structure

```
Netflix-Content-Analysis/
│
├── netflix_analysis.py        # Data preprocessing, EDA, ML & forecasting
├── Netflix.pbix               # Power BI interactive dashboard
├── category_trends.png        # Movies vs TV shows over time
├── top_genres.png             # Top 10 genres visualization
├── country_contributions.png # Top countries by content
├── forecast_trends.png        # ARIMA forecast results
├── feature_importance.png    # ML feature importance
├── choropleth_map.html       # Interactive world map
└── README.md
```

---

## 🔄 Data Processing Workflow

1. **Data Cleaning**

   * Handled missing values (Country, Director, Cast)
   * Converted release dates to datetime
   * Extracted release year

2. **Feature Engineering**

   * Label encoding for categorical variables
   * Aggregation by year, category, genre, and country

3. **Exploratory Data Analysis**

   * Content growth trends
   * Genre popularity distribution
   * Country-wise content contribution

---

## 📊 Key Visualizations

* Movies vs TV Shows growth trend
* Top 10 genres by count
* Top contributing countries
* Global choropleth content distribution
* Forecasted content trends (2022–2025)

---

## 🤖 Machine Learning & Forecasting

### 🔹 Time Series Forecasting (ARIMA)

* Forecasted Movies and TV Shows growth
* Indicates **TV Shows may surpass Movies post-2025**

### 🔹 Genre Prediction (Random Forest)

* Features: Year, Country, Category
* Accuracy: ~70–80%
* Key predictors: **Country and Release Year**

---

## 📈 Key Insights

* Early Netflix growth dominated by Movies (2008–2015)
* Rapid rise in TV Shows after 2015
* Most popular genres: **Drama, Comedy, Thriller**
* Top countries: **USA**, followed by **India**
* Strong opportunity for regional and non-US content expansion

---

## 🧠 Strategic Recommendations

* Increase investment in **TV Shows** for binge-watching behavior
* Expand **India-centric and regional content**
* Balance US dominance with international originals
* Use predictive analytics for annual content planning

---

## 🚀 How to Run the Project

```bash
pip install pandas matplotlib seaborn plotly scikit-learn statsmodels
python netflix_analysis.py
```

Open `Netflix.pbix` in **Power BI Desktop** to explore the interactive dashboard.

---

## 📎 Data Source

Public Netflix dataset used for educational and analytical purposes.

---

## 👤 Author

**Suvam Priyaranjan Sahoo**
Data Analytics | Python | Power BI | SQL 




