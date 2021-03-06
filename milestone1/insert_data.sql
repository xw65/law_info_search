INSERT INTO Cases VALUES
	(1, 'Grober v. Mako Products, Inc.', 'patentable subject matter', 'bio', '2012-07-30', 'def'),
	(2, 'AFTG-TG, LLC v. Nuvoton Technology Corp.', 'utility', 'ecs', '2012-08-24', 'plt'),
	(3, 'Cardiac Pacemakers, Inc. v. St. Jude Medical, Inc.', 'patentable subject matter', 'bio', '2009-08-19', 'def'),
	(4, 'Dambach v. Principi', 'utility', 'ecs', '2001-03-04', 'def');


INSERT INTO Court VALUES
	(301, 'Federal Circuit', 'Washington DC', 'Capital', 'appellate');


INSERT INTO Judge VALUES
	(301, 1, 'Sharon Prost', 'female', 'NC', '1951-05-19', '1995-05-01', 'Bill Clinton', 'Chief Judge'),
	(301, 2, 'Pauline Newman', 'male', 'NC', '1962-03-08', '2003-01-01', 'George W. Bush', 'Circuit Judge'),
	(301, 3, 'Alan Lourie', 'male', 'NY', '1971-12-13', '2002-06-01', 'George W. Bush', 'Circuit Judge'),
	(301, 4, 'Alvin Schall', 'male', 'NY', '1940-01-03', '2003-08-01', 'George W. Bush', 'Circuit Judge');


INSERT INTO Party VALUES
	(11, 'Grober', 1, 'NC', 'afr', 'male', 'dem'),
	(12, 'Mako Products, Inc.', 100, 'NY', 'eur', 'male', NULL),
	(13, 'AFTG-TG, LLC', 10, 'CA', 'eur', 'male', 'rep'),
	(14, 'Nuvoton Technology Corp.', 100, 'CA', 'eur', 'female', NULL),
	(15, 'Cardiac Pacemakers, Inc.', 1000, 'NY', 'nat', 'male', 'dem'),
	(16, 'St. Jude Medical, Inc.', 100, 'NY', 'asi', 'female', NULL),
	(17, 'Dambach', 1, 'NY', 'eur', 'male', NULL),
	(18, 'Principi', 1, 'NC', 'asi', 'female', 'dem');

	
INSERT INTO En_banc_reviewed VALUES
	(1, 1001),
	(3, 1003);

INSERT INTO Supreme_court_reviewed VALUES
	(1001, 20020);

INSERT INTO Involved VALUES 
	(1, 11, 'plt'),
	(1, 12, 'def'),
	(2, 13, 'plt'),
	(2, 14, 'def'),
	(3, 15, 'plt'),
	(3, 16, 'def'),
	(4, 17, 'plt'),
	(4, 18, 'def');

INSERT INTO Rules VALUES
	(1, 301, 1, 'def'),
	(1, 301, 2, 'def'),
	(1, 301, 3, 'def'),
	(2, 301, 1, 'plt'),
	(2, 301, 2, 'plt'),
	(2, 301, 3, 'plt'),
	(3, 301, 1, 'def'),
	(3, 301, 3, 'def'),
	(3, 301, 4, 'def'),
	(4, 301, 1, 'def'),
	(4, 301, 2, 'def'),
	(4, 301, 3, 'plt');


INSERT INTO Tech_judge VALUES 
	(301, 1, 'bio'),
	(301, 2, 'bio');
