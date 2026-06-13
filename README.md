# ☀️ E-Commerce Active Seller & Summer Products Performance Analysis


---

## 📝 Description
This data analysis project evaluates merchant parameters, discount structures, and product features to uncover what drives volume variations across summer e-commerce inventories. Utilizing **T-SQL (MS SQL Server)** for algorithmic data bucketing, tier segmentation, and feature transformations, alongside an interactive **Power BI** dashboard layout, the project transforms over 6.8 million raw transactional records into actionable strategic recommendations.

---

## 🎯 Key Performance Indicators (KPIs)

| Metric | Value | Description |
| :--- | :--- | :--- |
| 💰 **Total Units Sold** | **6,825,255** | Aggregate distribution across all platform merchants |
| ⭐ **Average Rating** | **4.04 / 5.0** | Overall product quality satisfaction score |
| 🏷️ **Average Discount** | **28.70%** | Mean markdown percentage applied across catalog products |
| 🏪 **Active Merchant Count** | **958** | Total unique distributor profiles tracked in study |

---

## 🔍 Core Insights Discovered

* **🏆 Tier Dominance:** Merchant profiles segmented as **Platinum** (selling $\ge$ 20K individual units) act as the bedrock of the catalog, generating **4.66M** of the total units sold despite comprising only 135 merchants.
* **⚡ Discount Paradox:** Products flagged with **High Discounts** ($>50\%$) generated the highest individual product run-rate speed with an average of **4,580 units sold per product**, proving heavy elastic price sensitivities.
* **🚀 Urgency Banner Influence:** Products running dynamic **Urgency Banners** outperformed static product listings significantly, capturing a higher average distribution velocity of **9,345 units per product** compared to only 5,592 units for non-banner products.

---

## 🛠️ Tech Stack & Tools Used
* **Database Engine:** Microsoft SQL Server (T-SQL)
* **BI & Data Visualization:** Power BI Desktop / Excel
* **Development Environment:** VS Code / Git Bash
* **Documentation Language:** Markdown

---

## 🗂️ Project Repository Structure
```text
├── Data/
│   └── sales_of_summer_products_excel.csv       # Raw transactional e-commerce dataset
├── SQL_Scripts/
│   └── sales_of_summer_products_project_sql.sql # Conditional modeling and pipeline views
├── Dashboard/
│   ├── sales_of_summer_products_dashboard.pdf   # High-resolution multi-page output
│   └── sales_of_summer_products_power_bi_poject_dashboard.jpg # Visual showcase image
└── README.md                                    # Project documentation portfolio
