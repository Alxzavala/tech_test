# Part 4: dbt Fundamentals

## 1. Project Consolidation
The 'tech_test' project integrates the following models:
- customer_total_sales
- monthly_orders
- monthly_orders_incremental

## 2. What is dbt
dbt (data build tool) is a data transformation tool in the data warehouse that allows you to create versioned SQL models, test their quality, and document them. Its purpose is to turn raw data into clean, analysis-ready datasets.

## 3. Three key components of a dbt project
| Component | Function |
|-----------|---------|
| Models    | SQL files that define transformations and final datasets. |
| Sources   | Definitions of external raw tables, with integrity tests. |
| Schema/Tests | YAML that documents columns and defines tests (`not_null`, `unique`). |
