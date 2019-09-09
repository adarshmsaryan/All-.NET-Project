
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/20/2019 17:06:48
-- Generated from EDMX file: C:\Users\Adarsha.MS\documents\visual studio 2015\Projects\AdvanceDotNetprjs\CodeFirstWindform\Model2.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ValtechDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tbl_customer'
CREATE TABLE [dbo].[tbl_customer] (
    [Custid] int IDENTITY(1,1) NOT NULL,
    [custName] nvarchar(max)  NOT NULL,
    [city] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tbl_order'
CREATE TABLE [dbo].[tbl_order] (
    [orderid] int IDENTITY(1,1) NOT NULL,
    [quantity] nvarchar(max)  NOT NULL,
    [custid] int  NOT NULL,
    [tbl_customerCustid] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Custid] in table 'tbl_customer'
ALTER TABLE [dbo].[tbl_customer]
ADD CONSTRAINT [PK_tbl_customer]
    PRIMARY KEY CLUSTERED ([Custid] ASC);
GO

-- Creating primary key on [orderid] in table 'tbl_order'
ALTER TABLE [dbo].[tbl_order]
ADD CONSTRAINT [PK_tbl_order]
    PRIMARY KEY CLUSTERED ([orderid] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [custid] in table 'tbl_order'
ALTER TABLE [dbo].[tbl_order]
ADD CONSTRAINT [FK_tbl_customertbl_order]
    FOREIGN KEY ([custid])
    REFERENCES [dbo].[tbl_customer]
        ([Custid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tbl_customertbl_order'
CREATE INDEX [IX_FK_tbl_customertbl_order]
ON [dbo].[tbl_order]
    ([custid]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------