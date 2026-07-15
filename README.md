# 🌾 Farmora | Smart Farm Management System

**AI-Powered Agriculture — Business Intelligence & Data Warehouse Project**

An ITI graduation project delivering an end-to-end Business Intelligence solution for smart farm management — covering the full data lifecycle from operational systems (OLTP) all the way to executive-ready dashboards, across three core sectors: **Crop, Livestock, and Poultry**.

---

## 👥 Team

- Mohamed Shabaan
- Nihal Sabri
- Nada Nasser
- Engy Elsayed
- George Samir

**Project Tracks:** Data Warehouse & ETL • Commercial BI & Reporting • AI & Predictive Analytics • Power App Development

---

## 📌 Project Overview

Farmora is a complete Business Intelligence solution for farm management, starting from an operational (OLTP) database and moving step by step through ETL/ELT, a Data Warehouse, OLAP cubes, reports, dashboards, and even an AI Agent with process automation.

The project is built around these components:

| Stage | Description |
|---|---|
| 🗄️ **Operational Database** | Normalized relational schema covering zones, resources, staff, customers, and transactions |
| ⚙️ **ETL with SSIS** | Pipelines extracting, transforming, and loading data from source into staging and warehouse tables |
| 🏢 **Data Warehouse** | Galaxy/Star Schema model: **4 Fact Tables + 9 Dimensions**, optimized for analytical reporting |
| 🧊 **SSAS Analysis Services** | Multidimensional OLAP cubes for fast, aggregated insights |
| 📄 **SSRS Reporting** | Parameterized, printable reports for executive stakeholders |
| 📊 **BI Dashboards** | Power BI and Tableau dashboards supporting decision-making |
| 🤖 **AI Component** | Predictive analytics feeding insights back into the platform |
| 📱 **Power App** | "Farmora Market" — an ordering and customer-facing app experience |
| 🔁 **Power Automate** | Workflow automation connecting the system's components |

---

## 🗂️ 1. Database Design (ERD)

- Entities covering zones, greenhouses, staff, customers, suppliers, sensors, and transactions.
- Primary Keys uniquely identify every record; Foreign Keys enforce relationships between entities.
- Models real-world interactions across the Crop, Livestock, and Poultry sectors.
- The Fish/Aquarium sector was fully excluded from scope.

---

## 🏗️ 2. Data Warehouse Design (Galaxy Schema)

- **4 Fact Tables**: Monitoring, Production, Commercial, Action/Risk
- **9 Dimensions**
- Customer relationships bind on `canonical_customer_sk` to preserve deduplication.
- All `raw_` prefixed columns are excluded from analytical visuals.
- `Fact_Commercial` holds Crop-sector transactions only.

---

## ⚙️ 3. ETL Pipeline (SSIS)

### Package Overview
- One SSIS package per source entity — dimensions and facts are loaded independently.
- Each package validates and confirms successful completion (green checks).
- Sequential execution ensures dimensions are ready before facts load.
- Covers all OLTP entities: Zone, Customer, Supplier, Orders, Sensors, Logs, and more.

### Data Flow Details (Dimension Loading)
- **OLE DB Source** extracts rows directly from the OLTP database.
- **Lookup Transformation** checks existing warehouse records to avoid duplicates.
- Matched rows are updated (OLE DB Command); new rows load via OLE DB Destination.
- Packages execute successfully with full data validation.

---

## 🧊 4. SSAS & SSRS

- OLAP cubes for Monitoring, Commercial, Production, Healthcare, and Alert/Risk.
- SSRS reports, parameterized and print-ready, built for executive stakeholders.

---

## 📊 5. Power BI Dashboards

| Dashboard | Description |
|---|---|
| Home / Landing Overview | High-level entry point introducing the project domains and scope |
| Environment Overview | Farm-wide monitoring of greenhouse readings and environmental conditions |
| Environment Trend | Trend analysis for climate, rainfall, and soil-condition monitoring |
| Zone / Greenhouse Performance | Location-performance view connecting zones, greenhouse status, and sensor activity |
| Irrigation & Water Management | Irrigation events, water usage, and soil moisture behavior |
| Sensor Readings Deep Dive | Sensor-health page for anomaly detection and diagnostics |
| Alert Overview | Risk-monitoring page summarizing alert status, severity, and type |
| Action Performance | Operational-response dashboard measuring alerts-to-actions conversion |
| Staff Performance | Staff operations page connecting activity, severity, and closure performance |
| Health Overview | Health and quality dashboard for animal, poultry, and crop indicators |
| Resource and Stock Management | Resource-control page linking stock levels, usage, and reorder visibility |
| Production Overview | Production summary for locations, area, harvest, and livestock/poultry counts |
| Crop Production | Crop-performance page for yield, harvest frequency, and quality |
| Animal Production | Animal-production dashboard for cattle, poultry, and egg-collection trends |
| Commercial Overview | Governed dashboard for revenue, purchases, profit, and cash flow |
| Customer & Supplier Analysis | Relationship-analysis page connecting customer revenue with supplier performance |
| Inventory & Reorder Analysis | Inventory-risk page for reorder needs and stock-out monitoring |

---

## 📈 6. Tableau Dashboards

| Dashboard | Description |
|---|---|
| Production Dashboard | Dark-themed production view summarizing locations, yield, and productivity |
| Greenhouse Dashboard | Greenhouse-focused view for soil, moisture, temperature, and sensor status |
| Alerts & Actions Dashboard | Risk-management view connecting alert status, severity, and staff actions |
| Commercial Overview Dashboard | Governed commercial page aligned with validated revenue and profit definitions |
| Animal Health & Crop Yield Operations | Combined health and production view for species status and crop quantity |

---

## 🤖 7. AI Agent

An AI component delivering predictive analytics that feed back into the platform to support operational decision-making.

## 🔁 8. Power Automate

Workflow automation connecting the different components of the system to streamline operations.

## 📱 9. Power App — Farmora Market

A customer-facing application for ordering and interacting with farm services.

---

## 🧰 Tech Stack

`SQL Server` • `SSIS (ETL/ELT)` • `SSAS (OLAP Cubes)` • `SSRS` • `Power BI` • `Tableau` • `Power Apps` • `Power Automate` • `AI / Predictive Analytics` • `draw.io (ERD)`

---

## 📅 Project Date

July 2026 — ITI Graduation Project

---


