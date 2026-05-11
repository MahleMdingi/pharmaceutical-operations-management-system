# Entity Breakdown

## Categories

Stores pharmaceutical product categories.

Examples:

* Antibiotics
* Painkillers
* Vaccines

### Key Fields

* CategoryID
* CategoryName

---

## Products

Stores pharmaceutical product information.

### Key Fields

* ProductID
* ProductName
* CategoryID
* Dosage
* UnitPrice

---

## Suppliers

Stores supplier information.

### Key Fields

* SupplierID
* SupplierName
* ContactPerson
* Phone
* Region

---

## SupplierProducts

Junction table used to resolve the many-to-many relationship between suppliers and products.

### Key Fields

* SupplierProductID
* SupplierID
* ProductID
* SupplyPrice
* LeadTimeDays

---

## Warehouses

Stores warehouse locations used for inventory storage.

### Key Fields

* WarehouseID
* WarehouseName
* Region

---

## Batches

Tracks pharmaceutical manufacturing batches.

### Key Fields

* BatchID
* ProductID
* BatchNumber
* ManufactureDate
* ExpiryDate
* QuantityProduced

---

## Inventory

Tracks stock quantities stored in warehouses.

### Key Fields

* InventoryID
* BatchID
* WarehouseID
* QuantityAvailable

---

## Customers

Stores customer information such as pharmacies and hospitals.

### Key Fields

* CustomerID
* CustomerName
* CustomerType
* Region

---

## Orders

Stores customer order information.

### Key Fields

* OrderID
* CustomerID
* OrderDate
* OrderStatus
* TotalAmount

---

## OrderItems

Stores products associated with customer orders.

### Key Fields

* OrderItemID
* OrderID
* ProductID
* Quantity
* UnitPrice

---

## Shipments

Tracks shipment and delivery information.

### Key Fields

* ShipmentID
* OrderID
* ShipmentDate
* DeliveryDate
* ShipmentStatus
