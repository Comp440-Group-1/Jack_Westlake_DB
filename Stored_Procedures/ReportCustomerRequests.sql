USE [s16guest29]
GO

/****** Object:  StoredProcedure [dbo].[ReportCustomerRequests]    Script Date: 5/2/2016 4:20:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jack Westlake
-- Create date: May 1st, 2016
-- Description:	Reports requests for products and their versions per month
-- =============================================
CREATE PROCEDURE [dbo].[ReportCustomerRequests] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Insert statements for procedure here
	CREATE TABLE #RequestsPerMonth(NameOfProduct varchar(50), MajorVersionNumber tinyint, MinorVersionNumber tinyint, MonthRequested varchar(7), RequestCount smallint)

	INSERT INTO #RequestsPerMonth
	SELECT DISTINCT Product.NameOfProduct, 
					Version.MajorVersionNumber, 
					Version.MinorVersionNumber, 
					CONVERT(varchar(7), CustomerRequest.DateOfRequest), 
					1 --PLACEHOLDER VALUE, COUNT NOT YET IMPLEMENTED
	FROM CustomerRequest
	INNER JOIN CustomerRelease
	ON CustomerRequest.CustomerReleaseID = CustomerRelease.CustomerReleaseID
	INNER JOIN Version
	ON CustomerRelease.VersionID = Version.VersionID
	INNER JOIN Product
	ON CustomerRelease.ProductID = Product.ProductID
	
	SELECT * FROM #RequestsPerMonth
END

GO

