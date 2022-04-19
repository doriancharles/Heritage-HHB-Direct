ALTER TABLE CompteATerme ADD numeroCompte int ;

ALTER TABLE CompteATerme ADD PRIMARY KEY (numeroCompte) ;

ALTER TABLE CompteATerme ADD FOREIGN KEY (numeroCompte) REFERENCE Compte (numeroCompte) ;



ALTER TABLE CompteEpargne ADD numeroVirement int ;

ALTER TABLE CompteEpargne ADD PRIMARY KEY (numeroCompte) ;

ALTER TABLE CompteEpargne ADD FOREIGN KEY (numeroCompte) REFERENCE Compte (numeroCompte) ;
