/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     23.03.2026 12:54:36                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('etat') and o.name = 'FK_ETAT_RELATIONS_STAWKA')
alter table etat
   drop constraint FK_ETAT_RELATIONS_STAWKA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('etat') and o.name = 'FK_ETAT_RELATIONS_ID_STANO')
alter table etat
   drop constraint FK_ETAT_RELATIONS_ID_STANO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('etat') and o.name = 'FK_ETAT_RELATIONS_PRACOWNIK')
alter table etat
   drop constraint FK_ETAT_RELATIONS_PRACOWNIK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('etat') and o.name = 'FK_ETAT_RELATIONS_PRZELOZONY')
alter table etat
   drop constraint FK_ETAT_RELATIONS_PRZELOZONY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('id_stanowisko_dzial') and o.name = 'FK_ID_STANO_RELATIONS_DZIAL')
alter table id_stanowisko_dzial
   drop constraint FK_ID_STANO_RELATIONS_DZIAL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('id_stanowisko_dzial') and o.name = 'FK_ID_STANO_RELATIONS_STANOWIS')
alter table id_stanowisko_dzial
   drop constraint FK_ID_STANO_RELATIONS_STANOWIS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dzial')
            and   type = 'U')
   drop table dzial
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('etat')
            and   name  = 'Relationship_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index etat.Relationship_6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('etat')
            and   name  = 'Relationship_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index etat.Relationship_5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('etat')
            and   name  = 'Relationship_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index etat.Relationship_4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('etat')
            and   name  = 'Relationship_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index etat.Relationship_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('etat')
            and   type = 'U')
   drop table etat
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('id_stanowisko_dzial')
            and   name  = 'Relationship_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index id_stanowisko_dzial.Relationship_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('id_stanowisko_dzial')
            and   name  = 'Relationship_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index id_stanowisko_dzial.Relationship_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('id_stanowisko_dzial')
            and   type = 'U')
   drop table id_stanowisko_dzial
go

if exists (select 1
            from  sysobjects
           where  id = object_id('pracownik')
            and   type = 'U')
   drop table pracownik
go

if exists (select 1
            from  sysobjects
           where  id = object_id('stanowisko')
            and   type = 'U')
   drop table stanowisko
go

if exists (select 1
            from  sysobjects
           where  id = object_id('stawka')
            and   type = 'U')
   drop table stawka
go

/*==============================================================*/
/* Table: dzial                                                 */
/*==============================================================*/
create table dzial (
   id_dzial             int                  not null,
   dzial                varchar(100)         not null,
   constraint PK_DZIAL primary key nonclustered (id_dzial)
)
go

/*==============================================================*/
/* Table: etat                                                  */
/*==============================================================*/
create table etat (
   id_etat              int                  not null,
   id_stawka            int                  not null,
   id_pracownik         int                  null,
   id_stanowisko_dzial  int                  not null,
   id_pracownik_przel   int                  not null,
   "data zatr"          datetime             not null,
   "data zwol"          datetime             null,
   constraint PK_ETAT primary key nonclustered (id_etat)
)
go

/*==============================================================*/
/* Index: Relationship_1_FK                                     */
/*==============================================================*/
create index Relationship_1_FK on etat (
id_stawka ASC
)
go

/*==============================================================*/
/* Index: Relationship_4_FK                                     */
/*==============================================================*/
create index Relationship_4_FK on etat (
id_stanowisko_dzial ASC
)
go

/*==============================================================*/
/* Index: Relationship_5_FK                                     */
/*==============================================================*/
create index Relationship_5_FK on etat (
id_pracownik ASC
)
go

/*==============================================================*/
/* Index: Relationship_6_FK                                     */
/*==============================================================*/
create index Relationship_6_FK on etat (
id_pracownik_przel ASC
)
go

/*==============================================================*/
/* Table: id_stanowisko_dzial                                   */
/*==============================================================*/
create table id_stanowisko_dzial (
   id_stanowisko_dzial  int                  not null,
   id_dzial             int                  not null,
   id_stanowisko        int                  not null,
   constraint PK_ID_STANOWISKO_DZIAL primary key nonclustered (id_stanowisko_dzial)
)
go

/*==============================================================*/
/* Index: Relationship_2_FK                                     */
/*==============================================================*/
create index Relationship_2_FK on id_stanowisko_dzial (
id_dzial ASC
)
go

/*==============================================================*/
/* Index: Relationship_3_FK                                     */
/*==============================================================*/
create index Relationship_3_FK on id_stanowisko_dzial (
id_stanowisko ASC
)
go

/*==============================================================*/
/* Table: pracownik                                             */
/*==============================================================*/
create table pracownik (
   id_pracownik         int                  not null,
   imie                 varchar(50)          not null,
   nazwisko             varchar(50)          not null,
   adres_1              varchar(100)         not null,
   adres_2              varchar(6)           not null,
   adres_3              varchar(50)          not null,
   telefon              varchar(9)           not null,
   constraint PK_PRACOWNIK primary key nonclustered (id_pracownik)
)
go

/*==============================================================*/
/* Table: stanowisko                                            */
/*==============================================================*/
create table stanowisko (
   id_stanowisko        int                  not null,
   stanowisko           varchar(150)         not null,
   constraint PK_STANOWISKO primary key nonclustered (id_stanowisko)
)
go

/*==============================================================*/
/* Table: stawka                                                */
/*==============================================================*/
create table stawka (
   id_stawka            int                  not null,
   stawka               float(10)            not null,
   constraint PK_STAWKA primary key nonclustered (id_stawka)
)
go

alter table etat
   add constraint FK_ETAT_RELATIONS_STAWKA foreign key (id_stawka)
      references stawka (id_stawka)
go

alter table etat
   add constraint FK_ETAT_RELATIONS_ID_STANO foreign key (id_stanowisko_dzial)
      references id_stanowisko_dzial (id_stanowisko_dzial)
go

alter table etat
   add constraint FK_ETAT_RELATIONS_PRACOWNIK foreign key (id_pracownik)
      references pracownik (id_pracownik)
go

alter table etat
   add constraint FK_ETAT_RELATIONS_PRZELOZONY foreign key (id_pracownik_przel)
      references pracownik (id_pracownik)
go

alter table id_stanowisko_dzial
   add constraint FK_ID_STANO_RELATIONS_DZIAL foreign key (id_dzial)
      references dzial (id_dzial)
go

alter table id_stanowisko_dzial
   add constraint FK_ID_STANO_RELATIONS_STANOWIS foreign key (id_stanowisko)
      references stanowisko (id_stanowisko)
go

