/* =========================================================
   NETFLIX DATA ANALYTICS PROJECT – SQL FILE
   =========================================================
   Purpose:
   - Data exploration
   - Business insights
   - Power BI backend queries
   ========================================================= */

-- =========================================================
-- 1. TABLE CREATION
-- =========================================================

CREATE TABLE netflix_titles (
    show_id        VARCHAR(10) PRIMARY KEY,
    title          VARCHAR(255),
    category       VARCHAR(20),      -- Movie / TV Show
    type           VARCHAR(100),     -- Genre
    director       VARCHAR(255),
    cast           TEXT,
    country        VARCHAR(100),
    release_date   DATE,
    rating         VARCHAR(10),
    duration       VARCHAR(50)
);

-- =========================================================
-- 2. BASIC KPIs
-- =========================================================

-- Total number of titles
SELECT COUNT(*) AS total_titles
FROM netflix_titles;

-- Total Movies vs TV Shows
SELECT 
    category,
    COUNT(*) AS total_count
FROM netflix_titles
GROUP BY category;

-- =========================================================
-- 3. YEARLY CONTENT TREND
-- =========================================================

SELECT 
    EXTRACT(YEAR FROM release_date) AS release_year,
    category,
    COUNT(*) AS total_count
FROM netflix_titles
WHERE release_date IS NOT NULL
GROUP BY release_year, category
ORDER BY release_year;

-- =========================================================
-- 4. COUNTRY ANALYSIS
-- =========================================================

-- Top 10 countries by content volume
SELECT 
    country,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- India vs United States comparison
SELECT 
    country,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE country IN ('India', 'United States')
GROUP BY country;

-- =========================================================
-- 5. GENRE ANALYSIS
-- =========================================================

-- Top 10 genres
SELECT 
    type AS genre,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY type
ORDER BY total_titles DESC
LIMIT 10;

-- Genre distribution by category
SELECT 
    category,
    type AS genre,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY category, type
ORDER BY category, total_titles DESC;

-- =========================================================
-- 6. RATING ANALYSIS
-- =========================================================

SELECT 
    rating,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY rating
ORDER BY total_titles DESC;

-- =========================================================
-- 7. RECENT CONTENT ANALYSIS
-- =========================================================

-- Content released in the last 5 years
SELECT *
FROM netflix_titles
WHERE release_date >= CURRENT_DATE - INTERVAL '5 years'
ORDER BY release_date DESC;

-- =========================================================
-- 8. DATA QUALITY CHECKS
-- =========================================================

-- Missing country values
SELECT COUNT(*) AS missing_country
FROM netflix_titles
WHERE country IS NULL;

-- Missing release dates
SELECT COUNT(*) AS missing_release_date
FROM netflix_titles
WHERE release_date IS NULL;

-- =========================================================
-- END OF FILE
-- =========================================================
