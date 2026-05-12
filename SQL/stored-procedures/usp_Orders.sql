CREATE PROCEDURE usp_Orders
    @i_CustomerID INT,
    @i_ProductID INT,
    @i_OrderQuantity INT
AS
BEGIN

    BEGIN TRY

        BEGIN TRAN

        DECLARE
            @l_TotalPrice DECIMAL(10,2),
            @l_UnitPrice DECIMAL(10,2),
            @l_OrderID INT

        -- ====================================
        -- Validation Checks
        -- ====================================

        -- Validate Customer Exists
        IF NOT EXISTS (
            SELECT 1
            FROM Customers
            WHERE CustomerID = @i_CustomerID
        )
        BEGIN
            RAISERROR('Customer does not exist.', 16, 1)
        END

        -- Validate Product Exists
        IF NOT EXISTS (
            SELECT 1
            FROM Products
            WHERE ProductID = @i_ProductID
        )
        BEGIN
            RAISERROR('Product does not exist.', 16, 1)
        END

        -- Validate Quantity
        IF @i_OrderQuantity <= 0
        BEGIN
            RAISERROR('Order quantity must be greater than 0.', 16, 1)
        END

        -- ====================================
        -- Retrieve Product Price
        -- ====================================

        SELECT @l_UnitPrice = UnitPrice
        FROM Products
        WHERE ProductID = @i_ProductID

        -- ====================================
        -- Calculate Total Amount
        -- ====================================

        SET @l_TotalPrice = @l_UnitPrice * @i_OrderQuantity

        -- ====================================
        -- Insert Into Orders
        -- ====================================

        INSERT INTO Orders (
            CustomerID,
            OrderDate,
            OrderStatus,
            TotalAmount
        )
        VALUES (
            @i_CustomerID,
            GETDATE(),
            'PENDING',
            @l_TotalPrice
        )

        -- Retrieve Newly Created OrderID
        SET @l_OrderID = SCOPE_IDENTITY()

        -- ====================================
        -- Insert Into OrderItems
        -- ====================================

        INSERT INTO OrderItems (
            OrderID,
            ProductID,
            Quantity,
            UnitPrice
        )
        VALUES (
            @l_OrderID,
            @i_ProductID,
            @i_OrderQuantity,
            @l_UnitPrice
        )

        COMMIT

    END TRY

    BEGIN CATCH

        ROLLBACK

        RAISERROR('ERROR UPON INSERT; ROLLING BACK', 16, 1)

    END CATCH

END
GO
