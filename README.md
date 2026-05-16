# Pharmaceutical Operations Management System

## Overview

This project is a SQL Server database design, backend development, and reporting project that simulates a real-world pharmaceutical operations management system.

The goal of the system is to support:

* Product management
* Batch tracking
* Inventory management
* Supplier management
* Customer order processing
* Shipment tracking
* Backend operational workflows
* Reporting & analytics

---

# Business Problem

Pharmaceutical companies require accurate tracking of:

* medication inventory
* manufacturing batches
* suppliers
* warehouses
* customer orders
* shipment operations

This project aims to design and implement a relational database system capable of supporting real-world pharmaceutical operational workflows efficiently and reliably.

---

# Current Features

* Product & category management
* Batch tracking
* Inventory management
* Warehouse tracking
* Supplier relationships
* Customer order management
* Shipment tracking
* Backend stored procedures
* Inventory reduction logic
* Inventory receival workflows
* Transaction handling
* Reporting & analytics queries

---

# Database Concepts Used

* Entity Relationship Diagrams (ERD)
* Primary Keys & Foreign Keys
* One-to-Many Relationships
* Many-to-Many Relationships
* Junction Tables
* Database Normalization
* Stored Procedures
* Transaction Management
* TRY/CATCH Error Handling
* Aggregation & Reporting Queries

---

# Stored Procedures Implemented

## usp_Orders

Creates customer orders and inserts related order items while automatically calculating total order amounts.

---

## usp_ProcessShipment

Processes customer shipments by:

* validating orders
* checking inventory availability
* reducing inventory quantities
* creating shipment records
* updating order statuses

---

## usp_StockReceival

Handles inbound inventory operations by:

* validating products and warehouses
* validating batch information
* creating new pharmaceutical batches
* inserting inventory records
* validating expiry and manufacture dates

---

# Reporting & Analytics

The project includes SQL reporting queries focused on:

* Inventory analysis
* Low stock monitoring
* Revenue tracking
* Customer spending analysis
* Shipment performance
* Expiry monitoring

Reports implemented include:

* Inventory Overview Report
* Low Stock Report
* Top Selling Products Report
* Revenue By Month Report
* Customer Spend Analysis
* Shipment Performance Report
* Expiring Inventory Report

---

# ERD


---

# Technologies

* SQL Server
* SQL Server Management Studio (SSMS)
* Draw.io
* GitHub

---

# Current Progress

## Completed

* Business requirements analysis
* ERD design
* Relationship mapping
* Physical database creation
* Primary & Foreign Key implementation
* Sample data population
* Stored procedure development
* Inventory workflow logic
* Shipment processing logic
* Inventory receival workflows
* BI & reporting queries

---
# Power BI Dashboard

The project includes a Power BI dashboard built using the pharmaceutical operations database.

The dashboard includes:
- Revenue tracking
- Order analytics
- Shipment performance
- Product sales analysis
- Inventory KPIs

This phase of the project helped strengthen foundational business intelligence and dashboard development skills using Power BI.

---

# Project Goal

The purpose of this project is to strengthen:

* database design skills
* backend SQL development
* business logic implementation
* transactional workflow thinking
* reporting & BI skills
* enterprise systems understanding

while simulating realistic pharmaceutical operational workflows using SQL Server.
