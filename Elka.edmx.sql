
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 02/03/2014 16:31:49
-- Generated from EDMX file: C:\Users\Alexandre\Documents\Visual Studio 2010\Projects\Elka\Elka\Elka.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [elka];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CadastroSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CadastroSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Cadastro'
CREATE TABLE [dbo].[Cadastro] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [cpf] nvarchar(20)  NOT NULL,
    [nome] nvarchar(100)  NOT NULL,
    [tamanho] nvarchar(5)  NOT NULL,
    [padrinho] nvarchar(50)  NOT NULL,
    [dt] datetime  NULL,
    [usuario] nvarchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Cadastro'
ALTER TABLE [dbo].[Cadastro]
ADD CONSTRAINT [PK_Cadastro]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------