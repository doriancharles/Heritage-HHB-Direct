ALTER TABLE Compte ADD numeroVirement int ;

ALTER TABLE  Compte ADD FOREIGN KEY (numeroVirement) REFERENCE Operation (numeroVirement) ;

CONSTRAINT associer_cheque CHECK ( numeroChequier IS NOT NULL AND numeroCarte IS NULL AND numeroVirement IS NULL) ;

CONSTRAINT associer_cb CHECK ( numeroChequier IS NULL AND numeroCarte IS NOT NULL AND numeroVirement IS NULL) ;

CONSTRAINT associer_virement CHECK ( numeroChequier IS NULL AND numeroCarte IS NULL AND numeroVirement IS NOT NULL) ;
