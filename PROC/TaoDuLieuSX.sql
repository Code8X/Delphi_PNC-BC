USE [HeThongBarCode]
GO

/****** Object:  StoredProcedure [dbo].[TaoDuLieuSX]    Script Date: 03/09/2020 2:50:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[TaoDuLieuSX]  
 @MAPHIEU nvarchar(20)--'2200000115'  
,@MASOLO nvarchar(20)--'23220413'  
,@SoBinhThung int--'1'  
,@SoBinhPalet int--'70'  
,@MASP nvarchar(20)  
,@SoBinh int  
as  
begin  
  
                                       
declare  @i int,@SoSeri nvarchar(14) ,@SoThung nvarchar(15) ,@SoPallet nvarchar(16)  , @st int ,  @spl int        
    
  
set @i=1  
while (@i<=@SoBinh)   
begin  
  
if @i<10  
set @SoSeri=@MASOLO + '000' + cast(@i as nvarchar(10))  
if (@i>=10) and (@i<100)  
set @SoSeri=@MASOLO + '00' + cast(@i as nvarchar(10))  
if (@i>=100) and (@i<1000)  
set @SoSeri=@MASOLO + '0' + cast(@i as nvarchar(10))  
if (@i>=1000)  
set @SoSeri=@MASOLO  + cast(@i as nvarchar(10))  
  
if  @SoBinhThung > 1  
set @st= (@i-1) / @SoBinhThung +1  
else  
set @st=@i   
  
  
if @st<10  
set @SoThung=@MASOLO + '0000' + cast(@st as nvarchar(10))  
if (@st>=10) and (@st<100)  
set @SoThung=@MASOLO + '000' + cast(@st as nvarchar(10))  
if (@st>=100) and (@st<1000)  
set @SoThung=@MASOLO + '00' + cast(@st as nvarchar(10))  
  
if  @SoBinhPalet > 1  
set @spl= (@i-1) / @SoBinhPalet +1  
else  
set @spl=1  
  
if @spl<10  
set @SoPallet=@MASOLO + '00000' + cast(@spl as nvarchar(10))  
if (@spl>=10) and (@st<100)  
set @SoPallet=@MASOLO + '0000' + cast(@spl as nvarchar(10))  
if (@spl>=100) and (@st<1000)  
set @SoPallet=@MASOLO + '000' + cast(@spl as nvarchar(10))  
  
  
  
  
  
  
INSERT INTO dbo.MASOSX  
                      (MAPHIEU, MASOSX, MaThung, MaPalet, STT, MASP, NgaySX)  
VALUES     (@MAPHIEU,@SoSeri, @SoThung, @SoPallet,@i, @MASP, getDate() )  
  
set @i=@i+1  
  
end  
  
  
            
  
end  
  
  
  
  


GO


