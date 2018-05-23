USE [AuditBlackBox]
GO
/****** Object:  Table [dbo].[AD-Export]    Script Date: 16/05/2018 7:51:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AD-Export](
	[Username] [nvarchar](50) NULL,
	[Username_Pre2000] [nvarchar](20) NULL,
	[ParentContainer] [nvarchar](255) NULL,
	[CreationDate] [datetime] NULL,
	[ModificationDate] [datetime] NULL,
	[Disabled] [bit] NULL,
	[Nummer] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AfasProfit-Export]    Script Date: 16/05/2018 7:51:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AfasProfit-Export](
	[EmployerCode] [nvarchar](10) NULL,
	[EmployerName] [nvarchar](255) NULL,
	[EmployeeUsername] [nvarchar](20) NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[ContractOrderNo] [int] NULL,
	[ContractStartDate] [date] NULL,
	[ContractEndDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medewerker]    Script Date: 16/05/2018 7:51:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medewerker](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PersoonID] [int] NOT NULL,
	[HuidigeLocatieID] [int] NULL,
	[MedewerkerNummer] [nvarchar](50) NULL,
	[Alias] [nvarchar](100) NULL,
	[GewijzigdOp] [datetime] NOT NULL,
	[GewijzigdDoor] [int] NULL,
	[AangemaaktOp] [datetime] NOT NULL,
	[AangemaaktDoor] [int] NULL,
	[IsVerwijderd] [bit] NOT NULL,
	[ADUserID] [int] NULL,
	[TeamID] [int] NULL,
 CONSTRAINT [PK_Medewerker] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persoon]    Script Date: 16/05/2018 7:51:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persoon](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Voorletters] [nvarchar](100) NULL,
	[Voornaam] [nvarchar](50) NULL,
	[Achternaam] [nvarchar](50) NULL,
	[Roepnaam] [nvarchar](50) NULL,
	[TussenvoegselFamilienaam] [nvarchar](50) NULL,
	[TussenvoegselAchternaam] [nvarchar](50) NULL,
	[Familienaam] [nvarchar](50) NULL,
	[Beroep] [nvarchar](150) NULL,
	[GeboorteDatum] [datetime] NULL,
	[OverlijdensDatum] [smalldatetime] NULL,
	[GeslachtID] [int] NULL,
	[GeboortePlaatsID] [int] NULL,
	[Begraafplaats] [nvarchar](50) NULL,
	[ReligieID] [int] NULL,
	[ReligieAndere] [nvarchar](100) NULL,
	[GeboorteLandID] [int] NULL,
	[GeboorteLandMoederID] [int] NULL,
	[GeboorteLandVaderID] [int] NULL,
	[BurgerlijkeStaatID] [int] NULL,
	[NationaliteitID] [int] NULL,
	[BijzondereCommunicatievormID] [int] NULL,
	[TaalVertalerNodigID] [int] NULL,
	[LeefsituatieID] [int] NULL,
	[LeefsituatieOpDatum] [smalldatetime] NULL,
	[JuridischeStatusOpDatum] [smalldatetime] NULL,
	[Artikel60VerklaringID] [int] NULL,
	[Artikel60VerklaringOpDatum] [smalldatetime] NULL,
	[HeeftPartnerOokAWBZ] [tinyint] NULL,
	[HeeftPartnerOokAWBZOpDatum] [smalldatetime] NULL,
	[IsIntramuraal] [bit] NULL,
	[VerhuistPartnerMeeID] [int] NULL,
	[AantalKinderen] [tinyint] NOT NULL,
	[AantalPleegkinderen] [tinyint] NULL,
	[IsMedischGeemancipeerd] [bit] NOT NULL,
	[VerblijfStatusID] [int] NULL,
	[VerblijfStatusOpDatum] [smalldatetime] NULL,
	[HoogstGenotenOpleidingID] [int] NULL,
	[HoogstGenotenOpleidingAndere] [nvarchar](100) NULL,
	[BSN] [nvarchar](9) NULL,
	[RedenGeenBSN] [int] NULL,
	[ClientHeeftGeenBSN] [bit] NULL,
	[BSNValidatieDatum] [smalldatetime] NULL,
	[BronBSN] [varchar](50) NULL,
	[IdentificatieMiddelSoort] [int] NULL,
	[IdentificatieMiddelNummer] [varchar](50) NULL,
	[IdentificatieMiddelValidatieDatum] [datetime] NULL,
	[IdentificatieMiddelValidatieStatus] [nchar](200) NULL,
	[RegistrerenBuitenlandsSoortDocument] [int] NULL,
	[RegistrerenBuitenlandsAndersSoortDocument] [varchar](50) NULL,
	[RegistrerenBuitenlandsLandID] [int] NULL,
	[RegistrerenBuitenlandsDocumentnummer] [varchar](50) NULL,
	[RegistrerenBuitenlandsOpmerkingen] [varchar](max) NULL,
	[GBAGeheim] [bit] NULL,
	[GBAInOnderzoek] [bit] NULL,
	[GewijzigdOp] [datetime] NOT NULL,
	[GewijzigdDoor] [int] NULL,
	[AangemaaktOp] [datetime] NOT NULL,
	[AangemaaktDoor] [int] NULL,
	[IsVerwijderd] [bit] NOT NULL,
	[tmpStamp] [timestamp] NULL,
	[IsGeheim] [bit] NOT NULL,
	[IsAdresgegevensGeheim] [bit] NOT NULL,
	[HerkomstID] [int] NULL,
	[HerkomstLandID] [int] NULL,
	[HerkomstPlaatsID] [int] NULL,
	[HerkomstPlaats] [nvarchar](200) NULL,
	[HerkomstOpDatum] [datetime] NULL,
	[KlantID] [int] NULL,
	[MedewerkerID] [int] NULL,
 CONSTRAINT [PK_Persoon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersoonCodes]    Script Date: 16/05/2018 7:51:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersoonCodes](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PersoonID] [int] NOT NULL,
	[CodesoortenID] [int] NOT NULL,
	[Startdatum] [smalldatetime] NULL,
	[Einddatum] [smalldatetime] NULL,
	[Code] [nvarchar](100) NULL,
	[GewijzigdOp] [datetime] NOT NULL,
	[GewijzigdDoor] [int] NULL,
	[AangemaaktOp] [datetime] NOT NULL,
	[AangemaaktDoor] [int] NULL,
	[IsVerwijderd] [bit] NOT NULL,
	[GebruiksvriendelijkeCode] [varchar](50) NULL,
	[GemeenteID] [int] NULL,
	[Peildatum] [datetime] NULL,
 CONSTRAINT [PK_PersoonCodes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Medewerker] ADD  CONSTRAINT [DF_Medewerker_GewijzigdOp]  DEFAULT (getdate()) FOR [GewijzigdOp]
GO
ALTER TABLE [dbo].[Medewerker] ADD  CONSTRAINT [DF_Medewerker_AangemaaktOp]  DEFAULT (getdate()) FOR [AangemaaktOp]
GO
ALTER TABLE [dbo].[Medewerker] ADD  CONSTRAINT [DF_Medewerker_IsVerwijderd]  DEFAULT ((0)) FOR [IsVerwijderd]
GO
ALTER TABLE [dbo].[Persoon] ADD  CONSTRAINT [DF_Persoon_AantalKinderen]  DEFAULT ((0)) FOR [AantalKinderen]
GO
ALTER TABLE [dbo].[Persoon] ADD  CONSTRAINT [DF_Persoon_IsMedischGeemancipeerd]  DEFAULT ((1)) FOR [IsMedischGeemancipeerd]
GO
ALTER TABLE [dbo].[Persoon] ADD  CONSTRAINT [DF_Persoon_BSNVerificatieStatus]  DEFAULT ((102)) FOR [BSNValidatieDatum]
GO
ALTER TABLE [dbo].[Persoon] ADD  CONSTRAINT [DF_Persoon_GewijzigdOp]  DEFAULT (getdate()) FOR [GewijzigdOp]
GO
ALTER TABLE [dbo].[Persoon] ADD  CONSTRAINT [DF_Persoon_AangemaaktOp]  DEFAULT (getdate()) FOR [AangemaaktOp]
GO
ALTER TABLE [dbo].[Persoon] ADD  CONSTRAINT [DF_Persoon_IsVerwijderd]  DEFAULT ((0)) FOR [IsVerwijderd]
GO
ALTER TABLE [dbo].[Persoon] ADD  CONSTRAINT [DF_Persoon_IsGeheim]  DEFAULT ((0)) FOR [IsGeheim]
GO
ALTER TABLE [dbo].[Persoon] ADD  CONSTRAINT [DF_Persoon_IsAdresgegevensGeheim]  DEFAULT ((0)) FOR [IsAdresgegevensGeheim]
GO
ALTER TABLE [dbo].[PersoonCodes] ADD  CONSTRAINT [DF_PersoonCodes_GewijzigdOp]  DEFAULT (getdate()) FOR [GewijzigdOp]
GO
ALTER TABLE [dbo].[PersoonCodes] ADD  CONSTRAINT [DF_PersoonCodes_AangemaaktOp]  DEFAULT (getdate()) FOR [AangemaaktOp]
GO
ALTER TABLE [dbo].[PersoonCodes] ADD  CONSTRAINT [DF_PersoonCodes_IsVerwijderd]  DEFAULT ((0)) FOR [IsVerwijderd]
GO
ALTER TABLE [dbo].[Medewerker]  WITH NOCHECK ADD  CONSTRAINT [FK_Medewerker_LocatieAdres] FOREIGN KEY([HuidigeLocatieID])
REFERENCES [dbo].[LocatieAdres] ([ID])
GO
ALTER TABLE [dbo].[Medewerker] NOCHECK CONSTRAINT [FK_Medewerker_LocatieAdres]
GO
ALTER TABLE [dbo].[Medewerker]  WITH NOCHECK ADD  CONSTRAINT [FK_Medewerker_Persoon] FOREIGN KEY([PersoonID])
REFERENCES [dbo].[Persoon] ([ID])
GO
ALTER TABLE [dbo].[Medewerker] NOCHECK CONSTRAINT [FK_Medewerker_Persoon]
GO
ALTER TABLE [dbo].[Medewerker]  WITH NOCHECK ADD  CONSTRAINT [FK_Medewerker_TeamID] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([ID])
GO
ALTER TABLE [dbo].[Medewerker] NOCHECK CONSTRAINT [FK_Medewerker_TeamID]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_Geslacht] FOREIGN KEY([GeslachtID])
REFERENCES [dbo].[Geslacht] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_Geslacht]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_Herkomst] FOREIGN KEY([HerkomstID])
REFERENCES [dbo].[Herkomst] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_Herkomst]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_HerkomstLand] FOREIGN KEY([HerkomstLandID])
REFERENCES [dbo].[Land] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_HerkomstLand]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_HerkomstPlaats] FOREIGN KEY([HerkomstPlaatsID])
REFERENCES [dbo].[Plaats] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_HerkomstPlaats]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_Land] FOREIGN KEY([GeboorteLandMoederID])
REFERENCES [dbo].[Land] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_Land]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_Land1] FOREIGN KEY([GeboorteLandID])
REFERENCES [dbo].[Land] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_Land1]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_Land2] FOREIGN KEY([GeboorteLandVaderID])
REFERENCES [dbo].[Land] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_Land2]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_Land3] FOREIGN KEY([RegistrerenBuitenlandsLandID])
REFERENCES [dbo].[Land] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_Land3]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_Nationaliteit] FOREIGN KEY([NationaliteitID])
REFERENCES [dbo].[Nationaliteit] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_Nationaliteit]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_Opleiding] FOREIGN KEY([HoogstGenotenOpleidingID])
REFERENCES [dbo].[Opleiding] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_Opleiding]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_Plaats] FOREIGN KEY([GeboortePlaatsID])
REFERENCES [dbo].[Plaats] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_Plaats]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_RedenGeenBSN] FOREIGN KEY([RedenGeenBSN])
REFERENCES [dbo].[RedenGeenBSN] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_RedenGeenBSN]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_Religie] FOREIGN KEY([ReligieID])
REFERENCES [dbo].[Religie] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_Religie]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_Taal] FOREIGN KEY([TaalVertalerNodigID])
REFERENCES [dbo].[Taal] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_Taal]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_VektisCodes_Artikel60] FOREIGN KEY([Artikel60VerklaringID])
REFERENCES [dbo].[VektisCodes] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_VektisCodes_Artikel60]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_VektisCodes_BijzondereCommunicatievorm] FOREIGN KEY([BijzondereCommunicatievormID])
REFERENCES [dbo].[VektisCodes] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_VektisCodes_BijzondereCommunicatievorm]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_VektisCodes_BurgerlijkeStaat] FOREIGN KEY([BurgerlijkeStaatID])
REFERENCES [dbo].[VektisCodes] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_VektisCodes_BurgerlijkeStaat]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_VektisCodes_Leefsituatie] FOREIGN KEY([LeefsituatieID])
REFERENCES [dbo].[VektisCodes] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_VektisCodes_Leefsituatie]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_VektisCodes_VerblijStatusID] FOREIGN KEY([VerblijfStatusID])
REFERENCES [dbo].[VektisCodes] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_VektisCodes_VerblijStatusID]
GO
ALTER TABLE [dbo].[Persoon]  WITH NOCHECK ADD  CONSTRAINT [FK_Persoon_VektisCodes_VerhuistPartnerMee] FOREIGN KEY([VerhuistPartnerMeeID])
REFERENCES [dbo].[VektisCodes] ([ID])
GO
ALTER TABLE [dbo].[Persoon] NOCHECK CONSTRAINT [FK_Persoon_VektisCodes_VerhuistPartnerMee]
GO
ALTER TABLE [dbo].[PersoonCodes]  WITH NOCHECK ADD  CONSTRAINT [FK_PersoonCodes_Codesoorten] FOREIGN KEY([CodesoortenID])
REFERENCES [dbo].[Codesoorten] ([ID])
GO
ALTER TABLE [dbo].[PersoonCodes] NOCHECK CONSTRAINT [FK_PersoonCodes_Codesoorten]
GO
ALTER TABLE [dbo].[PersoonCodes]  WITH NOCHECK ADD  CONSTRAINT [FK_PersoonCodes_Gemeente] FOREIGN KEY([GemeenteID])
REFERENCES [dbo].[Gemeente] ([ID])
GO
ALTER TABLE [dbo].[PersoonCodes] NOCHECK CONSTRAINT [FK_PersoonCodes_Gemeente]
GO
ALTER TABLE [dbo].[PersoonCodes]  WITH NOCHECK ADD  CONSTRAINT [FK_PersoonCodes_Persoon] FOREIGN KEY([PersoonID])
REFERENCES [dbo].[Persoon] ([ID])
GO
ALTER TABLE [dbo].[PersoonCodes] NOCHECK CONSTRAINT [FK_PersoonCodes_Persoon]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EmployeeNumber' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medewerker', @level2type=N'COLUMN',@level2name=N'MedewerkerNummer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Employee

Henk
Bart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Medewerker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Initials' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'Voorletters'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FirstName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'Voornaam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SurName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'Achternaam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nickName' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'Roepnaam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Insert surname' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'TussenvoegselFamilienaam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'insert name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'TussenvoegselAchternaam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Profesion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'Beroep'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of birth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'GeboorteDatum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of death' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'OverlijdensDatum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gender' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'GeslachtID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'birthplace' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'GeboortePlaatsID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Burial place' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'Begraafplaats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Birth country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'GeboorteLandID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of Birth Mother' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'GeboorteLandMoederID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID Language Translator Needed ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'TaalVertalerNodigID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of Childred' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'AantalKinderen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'number of foster children' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'AantalPleegkinderen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'isMedicalEmancipated' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'IsMedischGeemancipeerd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'residence status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'VerblijfStatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Highest Education' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'HoogstGenotenOpleidingID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BSN number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'BSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BSN Source ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'RedenGeenBSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'BSN Checked In' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'BSNValidatieDatum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Verified by BSN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon', @level2type=N'COLUMN',@level2name=N'BronBSN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Jan
Henk
Bart
Rianne
Robbin

R#: manage persons
R#477: while adding persons check if this person already exists (by firstname, lastname) 
        and let user decide to create a new one or not' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persoon'
GO
