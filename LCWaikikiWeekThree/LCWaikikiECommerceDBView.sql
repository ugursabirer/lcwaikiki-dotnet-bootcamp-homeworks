USE [LCWaikikiECommerceDB]
GO
/****** Object:  View [dbo].[LCWaikikiECommerceDBView]    Script Date: 5.05.2022 21:57:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[LCWaikikiECommerceDBView]
AS
SELECT        TOP (100) PERCENT dbo.Admin.Id, dbo.Product.Id AS Expr1, dbo.Product.Name, dbo.Product.Price, dbo.[User].Id AS Expr2, dbo.[User].FirstName, dbo.[User].LastName
FROM            dbo.Admin INNER JOIN
                         dbo.AdminType ON dbo.Admin.TypeId = dbo.AdminType.Id INNER JOIN
                         dbo.CartItem ON dbo.Admin.Id = dbo.CartItem.Id INNER JOIN
                         dbo.Discount ON dbo.Admin.Id = dbo.Discount.Id INNER JOIN
                         dbo.OrderDetails ON dbo.Admin.Id = dbo.OrderDetails.Id INNER JOIN
                         dbo.OrderItems ON dbo.OrderDetails.Id = dbo.OrderItems.OrderId INNER JOIN
                         dbo.PaymentDetails ON dbo.OrderDetails.PaymentId = dbo.PaymentDetails.Id INNER JOIN
                         dbo.Product ON dbo.CartItem.ProductId = dbo.Product.Id AND dbo.Discount.Id = dbo.Product.DiscountId AND dbo.OrderItems.ProductId = dbo.Product.Id INNER JOIN
                         dbo.ProductCategory ON dbo.Product.CategoryId = dbo.ProductCategory.Id INNER JOIN
                         dbo.ProductInventory ON dbo.Product.InventoryId = dbo.ProductInventory.Id INNER JOIN
                         dbo.ShoppingSession ON dbo.CartItem.SessionId = dbo.ShoppingSession.Id INNER JOIN
                         dbo.[User] ON dbo.OrderDetails.UserId = dbo.[User].Id AND dbo.ShoppingSession.UserId = dbo.[User].Id INNER JOIN
                         dbo.UserAddress ON dbo.[User].Id = dbo.UserAddress.UserId INNER JOIN
                         dbo.UserPayment ON dbo.[User].Id = dbo.UserPayment.UserId
WHERE        (dbo.Product.Price > 1000)
ORDER BY dbo.Product.Name, dbo.Product.Price DESC, dbo.[User].FirstName
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1[56] 3) )"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[75] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 8
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Admin"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AdminType"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CartItem"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Discount"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 136
               Right = 838
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "OrderDetails"
            Begin Extent = 
               Top = 6
               Left = 876
               Bottom = 136
               Right = 1046
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "OrderItems"
            Begin Extent = 
               Top = 6
               Left = 1084
               Bottom = 136
               Right = 1254
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PaymentDetails"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 208
            End
            DisplayF' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'LCWaikikiECommerceDBView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'lags = 280
            TopColumn = 0
         End
         Begin Table = "Product"
            Begin Extent = 
               Top = 138
               Left = 246
               Bottom = 268
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "ProductCategory"
            Begin Extent = 
               Top = 138
               Left = 454
               Bottom = 268
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ProductInventory"
            Begin Extent = 
               Top = 138
               Left = 662
               Bottom = 268
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ShoppingSession"
            Begin Extent = 
               Top = 138
               Left = 870
               Bottom = 268
               Right = 1040
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "User"
            Begin Extent = 
               Top = 138
               Left = 1078
               Bottom = 268
               Right = 1248
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserAddress"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserPayment"
            Begin Extent = 
               Top = 270
               Left = 268
               Bottom = 400
               Right = 438
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1590
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'LCWaikikiECommerceDBView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'LCWaikikiECommerceDBView'
GO
