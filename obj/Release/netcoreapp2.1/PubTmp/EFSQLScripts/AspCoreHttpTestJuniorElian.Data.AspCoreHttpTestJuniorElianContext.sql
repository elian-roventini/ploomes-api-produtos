IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210825203951_inicial')
BEGIN
    CREATE TABLE [Produto] (
        [ProdutoID] int NOT NULL IDENTITY,
        [Descricao] nvarchar(max) NULL,
        [Preco] float NOT NULL,
        [Qtde] float NOT NULL,
        CONSTRAINT [PK_Produto] PRIMARY KEY ([ProdutoID])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20210825203951_inicial')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20210825203951_inicial', N'2.1.14-servicing-32113');
END;

GO

