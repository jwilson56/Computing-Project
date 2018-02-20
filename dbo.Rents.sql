CREATE TABLE [dbo].[Rents] (
    [Rental_ID] INT NOT NULL,
    [UserID]    INT NOT NULL,
    [BookID]    INT NOT NULL,
    [Return_Date] DATE NOT NULL, 
    PRIMARY KEY CLUSTERED ([Rental_ID] ASC),
    CONSTRAINT [FK_Rents_BookID] FOREIGN KEY ([BookID]) REFERENCES [dbo].[Book] ([BookID])
);

