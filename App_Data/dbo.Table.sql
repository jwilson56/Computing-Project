CREATE TABLE [dbo].[Rents]
(
	[Rental_ID] INT NOT NULL PRIMARY KEY, 
    [UserID] INT NOT NULL, 
    [BookID] INT NOT NULL, 
    CONSTRAINT [FK_UserID] FOREIGN KEY ([UserID]) REFERENCES [UserID]([UserID]), 
    CONSTRAINT [FK_Rents_BookID] FOREIGN KEY ([BookID]) REFERENCES [Book]([BookID]), 
    
    
)
