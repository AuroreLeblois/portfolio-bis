DROP TABLE IF EXISTS "cv_pro";

CREATE TABLE IF NOT EXISTS "cv_pro"(
  "id" SERIAL NOT NULL,
  "poste" VARCHAR (300) NOT NULL,
  "entreprise" VARCHAR(150) NOT NULL,
  "description" VARCHAR (2000),
  "begin_date" INT NOT NULL,
  "end_date" INT NOT NULL,

  PRIMARY KEY ("id"));

INSERT INTO "cv_pro" ("entreprise","poste", "description", "begin_date", "end_date")
VALUES
("O'Clock", "Stagiaire Developpeuse web junior", "Apprentissage des bases HTML, CSS, SQL, Javascript. Prise en main de projets profiessionels. Intégartion web. Prise en main de React.", 09122019, 25052020),
("Parashop", "Vendeuse", "Vente de produit d'hygiène et de beauté. Encaissement. Argumentation de vente. Fidélisation client. Entretien magasin, réassort", 25102018, 01072019),
("Nature et Découvertes", "Vendeuse", "Vente de produit dans divers univers. Encaissement. Argumentation commerciale. Fidélisation de plus de 1500 client sur la période de mon CDD. Réassort", 01042017, 02032018),
("Château de Versailles", "Billettiste", "Vente de billets pour les spectacles extérieurs. Assurer le respect des règles de sécurité dans les jardins", 15032016, 01112016);
("auto-entrepreneuse", "auto-entrepreneuse", "Babysitting(2011-2013). Professeur particulier (2013-2014)", 01092011, 01092014 )
DROP TABLE IF EXISTS "cv_education";

CREATE TABLE IF NOT EXISTS "cv_education"(
    "id" SERIAL NOT NULL,
  "ecole" VARCHAR (300) NOT NULL,
  "description" VARCHAR (2000),
  "niv_sortie" VARCHAR(250),
  "begin_date" INT NOT NULL,
  "end_date" INT NOT NULL,

  PRIMARY KEY ("id")
);

INSERT INTO "cv_education" ("ecole", "description","niv_sortie" "begin_date", "end_date") VALUES 
("O'clock", "Apprentissage du HTML, CSS, SQL et javascript avec ses amis (node.js, express, session, ect..). Manipulations et gestions de base de données. POO. Spécialisation React.", "Bac+2", 09122019, 25052020),
("Google Digital Active","Apprentissage des normes de réferencement internet", "Certification Google Digital active", 01122016, 20122016 ),
("Sorbonne Nouvelle","Etudes d'Arts, Lettres et Langues en spécialisation cinéma et audiovisuel", "Bac+4", 01092011, 01072016 ),

DROP TABLE IF EXISTS "langue";

CREATE TABLE IF NOT EXISTS "langue"(
    "id" SERIAL NOT NULL,
    "langue" VARCHAR(100),
    "niveau" VARCHAR(500),
    PRIMARY KEY ("id")
)
INSERT INTO "langue"("langue", "niveau") VALUES
("français", "langue maternelle"),
("anglais", "lu, écrit, parlé opérationel professionnellement"),
("espagnol", "débutant")

DROP TABLE IF EXISTS "informatique";

CREATE TABLE IF NOT EXISTS "informatique"(
    "id" SERIAL NOT NULL,
    "langage" VARCHAR(300),
    "level" INT NOT NULL,
)
INSERT INTO "informatique" ("langage", "level") VALUES
("HTML", 90),
("CSS", 80),
("SQL", 75),
("Javascript", 95),
("npm", 75),
("Node.js", 90),
("espress", 80),
("ejs", 100),
("React",40),