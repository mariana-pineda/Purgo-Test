
CREATE TABLE dbo.[Shippers] (
	[ShipperID] INTEGER NOT NULL IDENTITY(1,1), 
	[CompanyName] NVARCHAR(40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL, 
	[Phone] NVARCHAR(24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL, 
	CONSTRAINT [PK_Shippers] PRIMARY KEY ([ShipperID])
)

