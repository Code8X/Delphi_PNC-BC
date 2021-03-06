USE [MDSG]
GO
/****** Object:  StoredProcedure [dbo].[Proc_InsertLenhSX]    Script Date: 04/09/2020 1:43:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Proc_InsertLenhSX](@MAPHIEU nvarchar(20),    
  
@NGAYLAP datetime,      
@CA nvarchar(20),      
@Tu datetime,      
@Den datetime,      
@TongTG int,      
@XN int,      
@ToSX nvarchar(20),      
@MASP nvarchar(20),      
@MSSX nvarchar(50),      
@SanLuong float,      
@DonVi nvarchar(50),      
@MaSoToSX nvarchar(20),      
@MaSoCA nvarchar(20),      
@UserSD nvarchar(50),      
@NgayCapNhat datetime,      
@HSThung int,      
@HSPallet int,      
@HSNT int,      
@HSNP int,      
@SoseriHT nvarchar(20),      
@SoThungHT nvarchar(20),      
@SoPalletHT nvarchar(20),      
@SoNhay int,      
@TENTOSX nvarchar(200),      
@TENSP nvarchar(200))      

AS 
/*
INSERT INTO dbo.LENHSX      
                      (MAPHIEU, NGAYLAP, CA, Tu, Den, TongTG, XN, ToSX, MASP, MSSX, SanLuong, DonVi, MaSoToSX, MaSoCA, UserSD, NgayCapNhat, HSThung,       
                      HSPallet, HSNT, HSNP, SoseriHT, SoThungHT, SoPalletHT, SoNhay, TENTOSX, TENSP)      
VALUES     (@MAPHIEU, @NGAYLAP, @CA, @Tu, @Den, @TongTG, @XN, @ToSX, @MASP, @MSSX, @SanLuong, @DonVi, @MaSoToSX, @MaSoCA, @UserSD,       
                      Getdate(), @HSThung, @HSPallet, @HSNT, @HSNP, @SoseriHT, @SoThungHT, @SoPalletHT, @SoNhay, @TENTOSX, @TENSP)    
    
*/  