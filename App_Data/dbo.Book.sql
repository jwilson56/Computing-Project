CREATE TABLE [dbo].[Book] (
    [BookID]      INT          IDENTITY (1, 1) NOT NULL,
    [BookName]    CHAR(10)          NOT NULL,
    [AuthorName]  TEXT         NOT NULL,
    [Copies]      SMALLINT     NOT NULL,
    [In_Stock]    BIT          NOT NULL,
    [Discription] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([BookID] ASC), 
    CONSTRAINT [CK_Book_In_Stock] CHECK (In_Stock = '1' or In_Stock = '0'), 
);

