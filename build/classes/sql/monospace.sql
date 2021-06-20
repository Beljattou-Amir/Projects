DROP DATABASE IF EXISTS MLR2;

CREATE DATABASE IF NOT EXISTS MLR2;
USE MLR2;
# -----------------------------------------------------------------------------
#       TABLE : CANDIDAT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CANDIDAT
 (
   ID INTEGER NOT NULL  ,
   NOM VARCHAR(32) NULL  ,
   PRENOM VARCHAR(32) NULL  ,
   DATENAISSANCE DATE NULL  ,
   MAIL VARCHAR(32) NULL  ,
   TELEPHONE CHAR(32) NULL  ,
   ADRESSE VARCHAR(32) NULL  ,
   MOT_DE_PASSE VARCHAR(32) NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : UTILISATEUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS UTILISATEUR
 (
   ID INTEGER NOT NULL  ,
   NOM VARCHAR(32) NULL  ,
   PRENOM VARCHAR(32) NULL  ,
   DATENAISSANCE DATE NULL  ,
   MAIL VARCHAR(32) NULL  ,
   TELEPHONE CHAR(32) NULL  ,
   ADRESSE VARCHAR(32) NULL  ,
   MOT_DE_PASSE VARCHAR(32) NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : ADMIN
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ADMIN
 (
   ID INTEGER NOT NULL  ,
   NOM VARCHAR(32) NULL  ,
   PRENOM VARCHAR(32) NULL  ,
   DATENAISSANCE DATE NULL  ,
   MAIL VARCHAR(32) NULL  ,
   TELEPHONE CHAR(32) NULL  ,
   ADRESSE VARCHAR(32) NULL  ,
   MOT_DE_PASSE VARCHAR(32) NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : ANNONCEEMPLOI
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ANNONCEEMPLOI
 (
   IDANNONCE INTEGER NOT NULL  
   , PRIMARY KEY (IDANNONCE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : SALARIE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS SALARIE
 (
   ID INTEGER NOT NULL  ,
   IMMATRICULATION VARCHAR(32) NULL  ,
   NOM VARCHAR(32) NULL  ,
   PRENOM VARCHAR(32) NULL  ,
   DATENAISSANCE DATE NULL  ,
   MAIL VARCHAR(32) NULL  ,
   TELEPHONE CHAR(32) NULL  ,
   ADRESSE VARCHAR(32) NULL  ,
   MOT_DE_PASSE VARCHAR(32) NULL  
   , PRIMARY KEY (ID) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : FICHEDEPAIE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS FICHEDEPAIE
 (
   IDFICHE INTEGER NOT NULL  ,
   ID INTEGER NOT NULL  
   , PRIMARY KEY (IDFICHE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE FICHEDEPAIE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_FICHEDEPAIE_SALARIE
     ON FICHEDEPAIE (ID ASC);

# -----------------------------------------------------------------------------
#       TABLE : POSTULER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS POSTULER
 (
   ID INTEGER NOT NULL  ,
   IDANNONCE INTEGER NOT NULL  ,
   ETAT VARCHAR(32) NULL  
   , PRIMARY KEY (ID,IDANNONCE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE POSTULER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_POSTULER_CANDIDAT
     ON POSTULER (ID ASC);

CREATE  INDEX I_FK_POSTULER_ANNONCEEMPLOI
     ON POSTULER (IDANNONCE ASC);


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE CANDIDAT 
  ADD FOREIGN KEY FK_CANDIDAT_UTILISATEUR (ID)
      REFERENCES UTILISATEUR (ID) ;


ALTER TABLE ADMIN 
  ADD FOREIGN KEY FK_ADMIN_UTILISATEUR (ID)
      REFERENCES UTILISATEUR (ID) ;


ALTER TABLE SALARIE
  ADD FOREIGN KEY FK_SALARIE_UTILISATEUR (ID)
      REFERENCES UTILISATEUR (ID) ;


ALTER TABLE FICHEDEPAIE 
  ADD FOREIGN KEY FK_FICHEDEPAIE_SALARIE (ID)
      REFERENCES SALARIE (ID) ;


ALTER TABLE POSTULER 
  ADD FOREIGN KEY FK_POSTULER_CANDIDAT (ID)
      REFERENCES CANDIDAT (ID) ;


ALTER TABLE POSTULER 
  ADD FOREIGN KEY FK_POSTULER_ANNONCEEMPLOI (IDANNONCE)
      REFERENCES ANNONCEEMPLOI (IDANNONCE) ;

