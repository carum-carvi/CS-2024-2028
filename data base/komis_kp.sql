/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     09.03.2026 16:01:47                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Model') and o.name = 'FK_MODEL_R_1_MARKA')
alter table Model
   drop constraint FK_MODEL_R_1_MARKA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pojazd') and o.name = 'FK_POJAZD_R_2_MODEL')
alter table Pojazd
   drop constraint FK_POJAZD_R_2_MODEL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pojazd') and o.name = 'FK_POJAZD_R_3_ROK_PROD')
alter table Pojazd
   drop constraint FK_POJAZD_R_3_ROK_PROD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Pojazd') and o.name = 'FK_POJAZD_R_4_KOLOR')
alter table Pojazd
   drop constraint FK_POJAZD_R_4_KOLOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Kolor')
            and   name  = 'kolor'
            and   indid > 0
            and   indid < 255)
   drop index Kolor.kolor
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Kolor')
            and   type = 'U')
   drop table Kolor
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Marka')
            and   name  = 'marka'
            and   indid > 0
            and   indid < 255)
   drop index Marka.marka
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Marka')
            and   type = 'U')
   drop table Marka
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Model')
            and   name  = 'model'
            and   indid > 0
            and   indid < 255)
   drop index Model.model
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Model')
            and   type = 'U')
   drop table Model
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Pojazd')
            and   name  = 'R_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Pojazd.R_2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Pojazd')
            and   name  = 'R_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index Pojazd.R_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Pojazd')
            and   name  = 'R_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index Pojazd.R_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pojazd')
            and   type = 'U')
   drop table Pojazd
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('rok_prod')
            and   name  = 'rok_prod'
            and   indid > 0
            and   indid < 255)
   drop index rok_prod.rok_prod
go

if exists (select 1
            from  sysobjects
           where  id = object_id('rok_prod')
            and   type = 'U')
   drop table rok_prod
go

/*==============================================================*/
/* Table: Kolor                                                 */
/*==============================================================*/
create table Kolor (
   Id_kolor             int                  identity,
   Nazwa_kolor          varchar(50)          not null,
   constraint PK_KOLOR primary key nonclustered (Id_kolor)
)
go

/*==============================================================*/
/* Index: kolor                                                 */
/*==============================================================*/
create unique index kolor on Kolor (
Nazwa_kolor ASC
)
go

/*==============================================================*/
/* Table: Marka                                                 */
/*==============================================================*/
create table Marka (
   Id_marka             int                  identity,
   Nazwa_marka          varchar(50)          not null,
   constraint PK_MARKA primary key nonclustered (Id_marka)
)
go

/*==============================================================*/
/* Index: marka                                                 */
/*==============================================================*/
create unique index marka on Marka (
Nazwa_marka ASC
)
go

/*==============================================================*/
/* Table: Model                                                 */
/*==============================================================*/
create table Model (
   Id_model             int                  identity,
   Id_marka             int                  not null,
   Nazwa_model          varchar(50)          not null,
   constraint PK_MODEL primary key nonclustered (Id_model)
)
go

/*==============================================================*/
/* Index: model                                                 */
/*==============================================================*/
create unique index model on Model (
Id_marka ASC
)
go

/*==============================================================*/
/* Table: Pojazd                                                */
/*==============================================================*/
create table Pojazd (
   Id_pojazd            int                  identity,
   Id_model             int                  not null,
   Id_rok_prod          int                  not null,
   Id_kolor             int                  not null,
   nr_rej               varchar(12)          null,
   przebieg             int                  not null,
   cena                 int                  not null,
   constraint PK_POJAZD primary key nonclustered (Id_pojazd)
)
go

/*==============================================================*/
/* Index: R_4_FK                                                */
/*==============================================================*/
create index R_4_FK on Pojazd (
Id_kolor ASC
)
go

/*==============================================================*/
/* Index: R_3_FK                                                */
/*==============================================================*/
create index R_3_FK on Pojazd (
Id_rok_prod ASC
)
go

/*==============================================================*/
/* Index: R_2_FK                                                */
/*==============================================================*/
create index R_2_FK on Pojazd (
Id_model ASC
)
go

/*==============================================================*/
/* Table: rok_prod                                              */
/*==============================================================*/
create table rok_prod (
   Id_rok_prod          int                  identity,
   rok_prod             char(4)              not null,
   constraint PK_ROK_PROD primary key nonclustered (Id_rok_prod)
)
go

/*==============================================================*/
/* Index: rok_prod                                              */
/*==============================================================*/
create unique index rok_prod on rok_prod (
rok_prod ASC
)
go

alter table Model
   add constraint FK_MODEL_R_1_MARKA foreign key (Id_marka)
      references Marka (Id_marka)
go

alter table Pojazd
   add constraint FK_POJAZD_R_2_MODEL foreign key (Id_model)
      references Model (Id_model)
go

alter table Pojazd
   add constraint FK_POJAZD_R_3_ROK_PROD foreign key (Id_rok_prod)
      references rok_prod (Id_rok_prod)
go

alter table Pojazd
   add constraint FK_POJAZD_R_4_KOLOR foreign key (Id_kolor)
      references Kolor (Id_kolor)
go

