# ERD Description

The Entity Relationship Diagram (ERD) represents the structure of the Pharmaceutical Operations Management System database.

The ERD was designed to model real-world pharmaceutical operational workflows using a relational database structure.

---

# Core Relationships

## Categories → Products

One category can contain many pharmaceutical products.

Example:

* Painkillers
* Antibiotics
* Vaccines

---

## Products → Batches

One product can have multiple manufacturing batches.

Each batch stores:

* manufacturing dates
* expiry dates
* batch numbers
* production quantities

---

## Suppliers ↔ Products

Suppliers and products share a many-to-many relationship.

This relationship is resolved using the `SupplierProducts` junction table.

This allows:

* one supplier to provide multiple products
* one product to be supplied by multiple suppliers

---

## Warehouses → Inventory

Warehouses store inventory records for pharmaceutical batches.

Inventory tracks the quantity available for each batch within a warehouse.

---

## Customers → Orders

Customers such as pharmacies and hospitals can place multiple orders.

---

## Orders → OrderItems

Each order can contain multiple products.

The `OrderItems` table stores:

* products
* quantities
* pricing information

---

## Orders → Shipments

Orders are linked to shipments used for delivery tracking.

The shipment module stores:

* shipment dates
* delivery dates
* shipment statuses

---

# Database Design Concepts Used

The ERD incorporates several relational database concepts, including:

* Primary Keys (PK)
* Foreign Keys (FK)
* One-to-Many relationships
* Many-to-Many relationships
* Junction tables
* Data normalization
* Transactional database design

The overall design aims to simulate a scalable enterprise-style pharmaceutical operations database system.
