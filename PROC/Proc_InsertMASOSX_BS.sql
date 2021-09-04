USE [MDSG]
GO
/****** Object:  StoredProcedure [dbo].[Proc_InsertMASOSX_BS]    Script Date: 04/09/2020 1:46:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Proc_InsertMASOSX_BS](      
@MAPHIEU nvarchar(20),      
@MASOSX nvarchar(20),        
@MaThung nvarchar(20),        
@MaPalet nvarchar(20),      
@NgaySX datetime,        
@MASP nvarchar(20),        
@STT int        
      
      
)        
AS 
/*

INSERT INTO dbo.MASOSX        
                      (MAPHIEU, MASOSX, MaThung, MaPalet, NgaySX, MASP, STT,MASAP)        
VALUES     (@MAPHIEU, @MASOSX, @MaThung, @MaPalet, @NgaySX, '0000'+@MASP, @STT, @MASP ) 
*/