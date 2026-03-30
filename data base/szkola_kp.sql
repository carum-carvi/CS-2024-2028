/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     23.03.2026 16:33:41                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Nauczyciel') and o.name = 'FK_NAUCZYCI_R_10_RODZAJ_E')
alter table Nauczyciel
   drop constraint FK_NAUCZYCI_R_10_RODZAJ_E
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Nauczyciel') and o.name = 'FK_NAUCZYCI_R_9_STOPIEN_')
alter table Nauczyciel
   drop constraint FK_NAUCZYCI_R_9_STOPIEN_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Przydzial') and o.name = 'FK_PRZYDZIA_R_3_ROK_SEM')
alter table Przydzial
   drop constraint FK_PRZYDZIA_R_3_ROK_SEM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Przydzial') and o.name = 'FK_PRZYDZIA_R_4_PRZEDMIO')
alter table Przydzial
   drop constraint FK_PRZYDZIA_R_4_PRZEDMIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Przydzial') and o.name = 'FK_PRZYDZIA_R_5_NAUCZYCI')
alter table Przydzial
   drop constraint FK_PRZYDZIA_R_5_NAUCZYCI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Przydzial') and o.name = 'FK_PRZYDZIA_R_6_KLASA')
alter table Przydzial
   drop constraint FK_PRZYDZIA_R_6_KLASA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_7') and o.name = 'FK_R_7_R_7_NAUCZYCI')
alter table R_7
   drop constraint FK_R_7_R_7_NAUCZYCI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_7') and o.name = 'FK_R_7_R_8_PRZEDMIO')
alter table R_7
   drop constraint FK_R_7_R_8_PRZEDMIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rodzaj_etatu') and o.name = 'FK_RODZAJ_E_R_11_STAWKA_G')
alter table Rodzaj_etatu
   drop constraint FK_RODZAJ_E_R_11_STAWKA_G
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Uczen') and o.name = 'FK_UCZEN_R_1_SZAFKA')
alter table Uczen
   drop constraint FK_UCZEN_R_1_SZAFKA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Uczen') and o.name = 'FK_UCZEN_R_2_KLASA')
alter table Uczen
   drop constraint FK_UCZEN_R_2_KLASA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Wychowawstwo') and o.name = 'FK_WYCHOWAW_R_12_KLASA')
alter table Wychowawstwo
   drop constraint FK_WYCHOWAW_R_12_KLASA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Wychowawstwo') and o.name = 'FK_WYCHOWAW_R_13_NAUCZYCI')
alter table Wychowawstwo
   drop constraint FK_WYCHOWAW_R_13_NAUCZYCI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Wychowawstwo') and o.name = 'FK_WYCHOWAW_R_14_ROK_SEM')
alter table Wychowawstwo
   drop constraint FK_WYCHOWAW_R_14_ROK_SEM
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Klasa')
            and   type = 'U')
   drop table Klasa
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Nauczyciel')
            and   name  = 'R_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index Nauczyciel.R_9_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Nauczyciel')
            and   name  = 'R_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index Nauczyciel.R_10_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Nauczyciel')
            and   type = 'U')
   drop table Nauczyciel
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Przedmiot')
            and   type = 'U')
   drop table Przedmiot
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Przydzial')
            and   name  = 'R_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index Przydzial.R_6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Przydzial')
            and   name  = 'R_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index Przydzial.R_4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Przydzial')
            and   name  = 'R_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index Przydzial.R_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Przydzial')
            and   name  = 'R_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index Przydzial.R_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Przydzial')
            and   type = 'U')
   drop table Przydzial
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_7')
            and   name  = 'R_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_7.R_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_7')
            and   name  = 'R_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_7.R_8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('R_7')
            and   type = 'U')
   drop table R_7
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rodzaj_etatu')
            and   name  = 'R_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rodzaj_etatu.R_11_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rodzaj_etatu')
            and   type = 'U')
   drop table Rodzaj_etatu
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rok_sem')
            and   type = 'U')
   drop table Rok_sem
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Stawka_godz')
            and   type = 'U')
   drop table Stawka_godz
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Stopien_naukowy')
            and   type = 'U')
   drop table Stopien_naukowy
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Szafka')
            and   type = 'U')
   drop table Szafka
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Uczen')
            and   name  = 'R_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index Uczen.R_1_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Uczen')
            and   name  = 'R_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Uczen.R_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Uczen')
            and   type = 'U')
   drop table Uczen
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Wychowawstwo')
            and   name  = 'R_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index Wychowawstwo.R_12_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Wychowawstwo')
            and   name  = 'R_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index Wychowawstwo.R_14_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Wychowawstwo')
            and   name  = 'R_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index Wychowawstwo.R_13_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Wychowawstwo')
            and   type = 'U')
   drop table Wychowawstwo
go

/*==============================================================*/
/* Table: Klasa                                                 */
/*==============================================================*/
create table Klasa (
   Id_klasa             int                  not null,
   nazwa_klasa          char(4)              not null,
   constraint PK_KLASA primary key nonclustered (Id_klasa)
)
go

/*==============================================================*/
/* Table: Nauczyciel                                            */
/*==============================================================*/
create table Nauczyciel (
   Id_nauczyciel        int                  not null,
   Id_rodzaj_et         int                  not null,
   Id_stopien           int                  not null,
   imie_n               varchar(20)          not null,
   nazwisko_n           varchar(20)          not null,
   adres_1_n            varchar(20)          not null,
   adres_2_n            char(6)              not null,
   adres_3_n            varchar(30)          not null,
   telefon_n            varchar(30)          not null,
   pesel_n              char(11)             not null,
   opinia_n             varchar(300)         null,
   data_zatrud          datetime             not null,
   constraint PK_NAUCZYCIEL primary key nonclustered (Id_nauczyciel)
)
go

/*==============================================================*/
/* Index: R_10_FK                                               */
/*==============================================================*/
create index R_10_FK on Nauczyciel (
Id_rodzaj_et ASC
)
go

/*==============================================================*/
/* Index: R_9_FK                                                */
/*==============================================================*/
create index R_9_FK on Nauczyciel (
Id_stopien ASC
)
go

/*==============================================================*/
/* Table: Przedmiot                                             */
/*==============================================================*/
create table Przedmiot (
   Id_przedmiot         int                  not null,
   nazwa_przedmiot      varchar(30)          not null,
   constraint PK_PRZEDMIOT primary key nonclustered (Id_przedmiot)
)
go

/*==============================================================*/
/* Table: Przydzial                                             */
/*==============================================================*/
create table Przydzial (
   Id_przydzial         int                  not null,
   Id_nauczyciel        int                  not null,
   Id_rok_sem           int                  not null,
   Id_przedmiot         int                  not null,
   Id_klasa             int                  not null,
   constraint PK_PRZYDZIAL primary key nonclustered (Id_przydzial)
)
go

/*==============================================================*/
/* Index: R_5_FK                                                */
/*==============================================================*/
create index R_5_FK on Przydzial (
Id_nauczyciel ASC
)
go

/*==============================================================*/
/* Index: R_3_FK                                                */
/*==============================================================*/
create index R_3_FK on Przydzial (
Id_rok_sem ASC
)
go

/*==============================================================*/
/* Index: R_4_FK                                                */
/*==============================================================*/
create index R_4_FK on Przydzial (
Id_przedmiot ASC
)
go

/*==============================================================*/
/* Index: R_6_FK                                                */
/*==============================================================*/
create index R_6_FK on Przydzial (
Id_klasa ASC
)
go

/*==============================================================*/
/* Table: R_7                                                   */
/*==============================================================*/
create table R_7 (
   Id_nauczyciel        int                  not null,
   Id_przedmiot         int                  not null,
   constraint PK_R_7 primary key nonclustered (Id_nauczyciel, Id_przedmiot)
)
go

/*==============================================================*/
/* Index: R_8_FK                                                */
/*==============================================================*/
create index R_8_FK on R_7 (
Id_przedmiot ASC
)
go

/*==============================================================*/
/* Index: R_7_FK                                                */
/*==============================================================*/
create index R_7_FK on R_7 (
Id_nauczyciel ASC
)
go

/*==============================================================*/
/* Table: Rodzaj_etatu                                          */
/*==============================================================*/
create table Rodzaj_etatu (
   Id_rodzaj_et         int                  not null,
   Id_stawka            int                  not null,
   nazwa_rodzaj         varchar(30)          not null,
   constraint PK_RODZAJ_ETATU primary key nonclustered (Id_rodzaj_et)
)
go

/*==============================================================*/
/* Index: R_11_FK                                               */
/*==============================================================*/
create index R_11_FK on Rodzaj_etatu (
Id_stawka ASC
)
go

/*==============================================================*/
/* Table: Rok_sem                                               */
/*==============================================================*/
create table Rok_sem (
   Id_rok_sem           int                  not null,
   nazwa_rok_sem        varchar(12)          not null,
   constraint PK_ROK_SEM primary key nonclustered (Id_rok_sem)
)
go

/*==============================================================*/
/* Table: Stawka_godz                                           */
/*==============================================================*/
create table Stawka_godz (
   Id_stawka            int                  not null,
   wartosc              decimal(6,2)         not null,
   constraint PK_STAWKA_GODZ primary key nonclustered (Id_stawka)
)
go

/*==============================================================*/
/* Table: Stopien_naukowy                                       */
/*==============================================================*/
create table Stopien_naukowy (
   Id_stopien           int                  not null,
   nazwa_stopien        varchar(30)          not null,
   constraint PK_STOPIEN_NAUKOWY primary key nonclustered (Id_stopien)
)
go

/*==============================================================*/
/* Table: Szafka                                                */
/*==============================================================*/
create table Szafka (
   Id_szafka            int                  not null,
   Nr_szafki            varchar(6)           null,
   constraint PK_SZAFKA primary key nonclustered (Id_szafka)
)
go

/*==============================================================*/
/* Table: Uczen                                                 */
/*==============================================================*/
create table Uczen (
   Id_uczen             int                  not null,
   Id_klasa             int                  not null,
   Id_szafka            int                  not null,
   imie_uc              varchar(20)          not null,
   nazwisko_u           varchar(20)          not null,
   adres_1_u            varchar(30)          not null,
   adres_2_u            char(6)              not null,
   adres_3_u            varchar(30)          not null,
   telefon_u            varchar(30)          null,
   pesel_u              char(11)             not null,
   opinia_u             varchar(300)         null,
   constraint PK_UCZEN primary key nonclustered (Id_uczen)
)
go

/*==============================================================*/
/* Index: R_2_FK                                                */
/*==============================================================*/
create index R_2_FK on Uczen (
Id_klasa ASC
)
go

/*==============================================================*/
/* Index: R_1_FK                                                */
/*==============================================================*/
create index R_1_FK on Uczen (
Id_szafka ASC
)
go

/*==============================================================*/
/* Table: Wychowawstwo                                          */
/*==============================================================*/
create table Wychowawstwo (
   Id_wychowawstwo      int                  not null,
   Id_nauczyciel        int                  not null,
   Id_rok_sem           int                  not null,
   Id_klasa             int                  not null,
   constraint PK_WYCHOWAWSTWO primary key nonclustered (Id_wychowawstwo)
)
go

/*==============================================================*/
/* Index: R_13_FK                                               */
/*==============================================================*/
create index R_13_FK on Wychowawstwo (
Id_nauczyciel ASC
)
go

/*==============================================================*/
/* Index: R_14_FK                                               */
/*==============================================================*/
create index R_14_FK on Wychowawstwo (
Id_rok_sem ASC
)
go

/*==============================================================*/
/* Index: R_12_FK                                               */
/*==============================================================*/
create index R_12_FK on Wychowawstwo (
Id_klasa ASC
)
go

alter table Nauczyciel
   add constraint FK_NAUCZYCI_R_10_RODZAJ_E foreign key (Id_rodzaj_et)
      references Rodzaj_etatu (Id_rodzaj_et)
go

alter table Nauczyciel
   add constraint FK_NAUCZYCI_R_9_STOPIEN_ foreign key (Id_stopien)
      references Stopien_naukowy (Id_stopien)
go

alter table Przydzial
   add constraint FK_PRZYDZIA_R_3_ROK_SEM foreign key (Id_rok_sem)
      references Rok_sem (Id_rok_sem)
go

alter table Przydzial
   add constraint FK_PRZYDZIA_R_4_PRZEDMIO foreign key (Id_przedmiot)
      references Przedmiot (Id_przedmiot)
go

alter table Przydzial
   add constraint FK_PRZYDZIA_R_5_NAUCZYCI foreign key (Id_nauczyciel)
      references Nauczyciel (Id_nauczyciel)
go

alter table Przydzial
   add constraint FK_PRZYDZIA_R_6_KLASA foreign key (Id_klasa)
      references Klasa (Id_klasa)
go

alter table R_7
   add constraint FK_R_7_R_7_NAUCZYCI foreign key (Id_nauczyciel)
      references Nauczyciel (Id_nauczyciel)
go

alter table R_7
   add constraint FK_R_7_R_8_PRZEDMIO foreign key (Id_przedmiot)
      references Przedmiot (Id_przedmiot)
go

alter table Rodzaj_etatu
   add constraint FK_RODZAJ_E_R_11_STAWKA_G foreign key (Id_stawka)
      references Stawka_godz (Id_stawka)
go

alter table Uczen
   add constraint FK_UCZEN_R_1_SZAFKA foreign key (Id_szafka)
      references Szafka (Id_szafka)
go

alter table Uczen
   add constraint FK_UCZEN_R_2_KLASA foreign key (Id_klasa)
      references Klasa (Id_klasa)
go

alter table Wychowawstwo
   add constraint FK_WYCHOWAW_R_12_KLASA foreign key (Id_klasa)
      references Klasa (Id_klasa)
go

alter table Wychowawstwo
   add constraint FK_WYCHOWAW_R_13_NAUCZYCI foreign key (Id_nauczyciel)
      references Nauczyciel (Id_nauczyciel)
go

alter table Wychowawstwo
   add constraint FK_WYCHOWAW_R_14_ROK_SEM foreign key (Id_rok_sem)
      references Rok_sem (Id_rok_sem)
go

