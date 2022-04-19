CREATE TABLE CarteBancaire 
( 
numeroCarte int , 
codeSecurite varchar(30) , 
dateDelivrance date , 
activation boolean 
) 
;

CREATE TABLE Chequier 
( 
numeroChequier int ,
dateDelivrance date ,
) 
;

CREATE TABLE Cheque 
( 
numeroChequier int ,
dateEmission date ,
) 
;

CONSTRAINT associer_cheque CHECK ( numeroChequier IS NOT NULL AND numeroCarte IS NULL ) ;

CONSTRAINT associer_cb CHECK ( numeroChequier IS NULL AND numeroCarte IS NOT NULL ) ;
