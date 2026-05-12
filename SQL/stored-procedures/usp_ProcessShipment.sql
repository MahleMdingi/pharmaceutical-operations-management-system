CREATE PROCEDURE usp_ProcessShipment
    @i_OrderID INT
AS
BEGIN

    BEGIN TRY

        BEGIN TRAN

        DECLARE
            @l_InventoryID INT,
            @l_QuantityAvailable INT,
            @l_OrderedQuantity INT

        -- ====================================
        -- Validate Order Exists
        -- ====================================

        IF NOT EXISTS (
            SELECT 1
            FROM Orders
            WHERE OrderID = @i_OrderID
        )
        BEGIN
            RAISERROR('Order does not exist.', 16, 1)
        END

        -- ====================================
        -- Validate Order Has Not Already Shipped
        -- ====================================

        IF EXISTS (
            SELECT 1
            FROM Shipments
            WHERE OrderID = @i_OrderID
            AND ShipmentStatus = 'Shipped'
        )
        BEGIN
            RAISERROR('Order has already been shipped.', 16, 1)
        END

        -- ====================================
        -- Retrieve Inventory Information
        -- ====================================

        SELECT
            @l_InventoryID = i.InventoryID,
            @l_QuantityAvailable = i.QuantityAvailable,
            @l_OrderedQuantity = oi.Quantity
        FROM Inventory i
        JOIN Batches b
            ON i.BatchID = b.BatchID
        JOIN OrderItems oi
            ON b.ProductID = oi.ProductID
        WHERE oi.OrderID = @i_OrderID

        -- ====================================
        -- Validate Inventory Exists
        -- ====================================

        IF @l_InventoryID IS NULL
        BEGIN
            RAISERROR('Inventory record not found.', 16, 1)
        END

        -- ====================================
        -- Validate Sufficient Inventory
        -- ====================================

        IF @l_QuantityAvailable < @l_OrderedQuantity
        BEGIN
            RAISERROR('Insufficient inventory available.', 16, 1)
        END

        -- ====================================
        -- Reduce Inventory Quantity
        -- ====================================

        UPDATE Inventory
        SET QuantityAvailable =
            QuantityAvailable - @l_OrderedQuantity
        WHERE InventoryID = @l_InventoryID

        -- ====================================
        -- Create Shipment Record
        -- ====================================

        INSERT INTO Shipments (
            OrderID,
            ShipmentDate,
            DeliveryDate,
            ShipmentStatus
        )
        VALUES (
            @i_OrderID,
            GETDATE(),
            NULL,
            'Shipped'
        )

        -- ====================================
        -- Update Order Status
        -- ====================================

        UPDATE Orders
        SET OrderStatus = 'Shipped'
        WHERE OrderID = @i_OrderID

        COMMIT

    END TRY

    BEGIN CATCH

        ROLLBACK

            DECLARE @l_ErrorMessage VARCHAR(500)

            SET @l_ErrorMessage = ERROR_MESSAGE()

            RAISERROR(@l_ErrorMessage, 16, 1)

    END CATCH

END
GO
