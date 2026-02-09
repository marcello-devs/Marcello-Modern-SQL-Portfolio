# Marcello Modern SQL Portfolio

[![Docs](https://img.shields.io/badge/dbt%20Docs-Live-brightgreen)](https://marcello-devs.github.io/Marcello-Modern-SQL-Portfolio/)
![dbt](https://img.shields.io/badge/dbt-Core-orange)
![DuckDB](https://img.shields.io/badge/DuckDB-Local-yellow)
![CI](https://img.shields.io/github/actions/workflow/status/marcello-devs/Marcello-Modern-SQL-Portfolio/ci.yml?branch=main)
![Last Updated](https://img.shields.io/github/last-commit/marcello-devs/Marcello-Modern-SQL-Portfolio)

## Overview

This project demonstrates a modern **analytics engineering workflow** using open-source tools.

It models raw operational data into analytics-ready **dimension and fact tables** using
industry best practices: layered modeling, automated data quality tests, and documented lineage.

The project is intentionally designed to be **100% free and locally reproducible**, while still
matching the tooling and workflows used in production analytics teams.

This repository is intended to demonstrate analytics engineering best practices for data and analytics roles.

## Key Engineering Concepts Demonstrated

- **Layered data modeling**
  - Raw → Staging → Marts (dimensions and facts)
- **Data quality enforcement**
  - Primary keys, not-null checks, relationship tests
- **Analytics engineering tooling**
  - dbt Core for transformations
  - DuckDB as a lightweight analytical warehouse
- **Automation & CI**
  - SQLFluff linting
  - dbt build executed on every push via GitHub Actions
- **Documentation & lineage**
  - Auto-generated dbt docs published to GitHub Pages

## Project Structure

- `marcello_modern_portfolio/` — dbt project
- `warehouse.duckdb` — local DuckDB database (generated locally)
- `screenshots/` — documentation screenshots
- `.github/workflows/` — CI and Pages workflows

## How to run locally (Windows)

Run the following commands to build the warehouse, execute tests, and explore the documentation locally:

```powershell
cd D:\Coding\GitHub\Marcello-Modern-SQL-Portfolio
.\.venv\Scripts\Activate.ps1
cd marcello_modern_portfolio

dbt seed
dbt build
dbt docs generate
dbt docs serve
```

🔗 **Live dbt Docs (DAG & lineage)**  
https://marcello-devs.github.io/Marcello-Modern-SQL-Portfolio/
