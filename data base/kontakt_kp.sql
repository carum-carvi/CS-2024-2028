/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     02.03.2026 15:52:20                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('kontakt') and o.name = 'FK_KONTAKT_RELATIONS_GRUPA')
alter table kontakt
   drop constraint FK_KONTAKT_RELATIONS_GRUPA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('grupa')
            and   type = 'U')
   drop table grupa
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('kontakt')
            and   name  = 'Relationship_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index kontakt.Relationship_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('kontakt')
            and   type = 'U')
   drop table kontakt
go

/*==============================================================*/
/* Table: grupa                                                 */
/*==============================================================*/
create table grupa (
   id_grupa             int                  not null,
   Nazwa_grupy          varchar(50)          not null,
   constraint PK_GRUPA primary key nonclustered (id_grupa)
)
go

/*==============================================================*/
/* Table: kontakt                                               */
/*==============================================================*/
create table kontakt (
   Id_kontakt           int                  not null,
   id_grupa             int                  not null,
   Imie                 varchar(50)          not null,
   Nazwisko             varchar(50)          not null,
   Adres_1              varchar(150)         not null,
   Adres_2              char(6)              not null,
   Adres_3              varchar(100)         not null,
   Telefon              varchar(20)          null,
   Mobile               varchar(20)          not null,
   Email                varchar(100)         not null,
   constraint PK_KONTAKT primary key nonclustered (Id_kontakt)
)
go

/*==============================================================*/
/* Index: Relationship_1_FK                                     */
/*==============================================================*/
create index Relationship_1_FK on kontakt (
id_grupa ASC
)
go

alter table kontakt
   add constraint FK_KONTAKT_RELATIONS_GRUPA foreign key (id_grupa)
      references grupa (id_grupa)
go

