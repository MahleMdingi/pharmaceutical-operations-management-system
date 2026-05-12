# Pharmaceutical Operations Management System

## Overview

This project is a SQL Server database design and backend development project that simulates a real-world pharmaceutical operations management system.

The goal of the system is to support:

* Product management
* Batch tracking
* Inventory management
* Supplier management
* Customer order processing
* Shipment tracking
* Backend operational workflows

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
* Transaction handling

---

# Database Concepts Used

* Entity Relationship Diagrams (ERD)
* Primary Keys & Foreign Keys
* One-to-Many Relationships
* Many-to-Many Relationships
* Database Normalization
* Stored Procedures
* Transaction Management
* TRY/CATCH Error Handling

---

# Stored Procedures Implemented

## usp_Orders

Creates customer orders and inserts related order items while automatically calculating total order amounts.

## usp_ProcessShipment

Processes customer shipments by:

* validating orders
* checking inventory availability
* reducing inventory quantities
* creating shipment records
* updating order statuses

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

---

# Future Improvements

* Inventory transaction logging
* Expiry monitoring workflows
* Low stock alert procedures
* Reporting & analytics queries
* Query optimization
* Advanced warehouse logic
* Performance optimization

---

# Project Goal

The purpose of this project is to strengthen:

* database design skills
* backend SQL development
* business logic implementation
* transactional workflow thinking
* enterprise systems understanding

while simulating realistic pharmaceutical operational workflows using SQL Server.
