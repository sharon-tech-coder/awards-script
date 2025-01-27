insert into categories
values 
    (1,'Television'),
    (2,'Film'),
    (3,'Short Film'),
    (4,'Documentary'),
    (5,'Online'),
    (6,'Technical Craft');

insert into presenting_partners
values 
    (1,'EMG/Gravity Media'),
    (2,'Network 10'),
    (3,'BINGE'),
    (4,'Spectrum Films'),
    (5,'Casting Networks');

insert into awards (award_name,category_id)
values 
    ('Best Drama Series',1),
    ('Best Miniseries',1),
    ('Best Narrative Comedy Series',1),
    ('Best Comedy Entertainment Program',1),
    ('Best Entertainment Program',1),
    ('Best Factual Entertainment Program',1),
    ('Best Lifestyle Program',1),
    ('Best Reality Program',1),
    ('Best Documentary or Factual Program',1),
    ('Best Children''s Program',1),
    ('Best Stand-Up Special',1),
    ('Best Lead Actress in a Drama',1),
    ('Best Lead Actor in a Drama',1),
    ('Best Comedy Performer',1),
    ('Best Acting in a Comedy',1),
    ('Best Supporting Actress in a Drama',1),
    ('Best Supporting Actor in a Drama',1),
    ('Best Direction in Drama or Comedy',1),
    ('Best Screenplay in Television',1),
    ('Best Direction in Nonfiction Television',1),
    ('Best Cinematography in Television',6),
    ('Best Costume Design in Television',6),
    ('Best Editing in Television',6),
    ('Best Production Design in Television',6),
    ('Best Original Score in Television',6),
    ('Best Sound in Television',6),
    ('Best Casting in Television',6);

insert into distribution_companies (distribution_co_name)
values 
    ('Paramount+'),
    ('Netflix'),
    ('Disney+'),
    ('Foxtel'),
    ('Binge'),
    ('Stan'),
    ('ABC'),
    ('SBS'),
    ('Nine Network'),
    ('Amazon Prime Video');

insert into production_companies (production_co_name)
values 
    ('Kindling Pictures'),
    ('Fremantle Australia'),
    ('Curio Pictures'),
    ('Beach Road Pictures'),
    ('Warner Bros. International Television Production Australia'),
    ('Easy Tiger Productions'),
    ('Ludo Studio & Since1778 Productions'),
    ('Blackfella Films'),
    ('Brouhaha Entertainment Australia'),
    ('Thirdborn'),
    ('Matchbox Pictures'),
    ('Roadshow Rough Diamond'),
    ('Princess Pictures'),
    ('Northern Pictures'),
    ('Origma 45'),
    ('BBC Studios Australia'),
    ('Bunya Entertainment'),
    ('Made Up Stories'),
    ('Fifth Season'),
    ('Working Dog Productions'),
    ('Thinkative Television'),
    ('ABC'),
    ('Kevin & Co'),
    ('Endemol Shine Australia');


insert into talents (talent_fname,talent_lname)
values 
    ('Imogen', 'Banks'),
    ('Emelyne', 'Palmer'),
    ('Asher', 'Keddie'),
    ('Carly', 'Heaton'),
    ('Sarah', 'Freeman'),
    ('Hannah Carroll', 'Chapman'),
    ('Jo', 'Porter'),
    ('David', 'Maher'),
    ('David', 'Taylor'),
    ('Hamish', 'Lewis'),
    ('Michael','Brooks'),
    ('Dylan', 'River'),
    ('Darren', 'Dale'),
    ('Andrew', 'Mason'),
    ('Ally', 'Henville'),
    ('Ian', 'Collie'),
    ('Rob', 'Gibson'),
    ('Tanith', 'Glynn-Maloney'),
    ('Charlie', 'Aspinwall'),
    ('Daley', 'Pearson'),
    ('Sam', 'Moor'),
    ('Rachel', 'Griffiths'),
    ('Stuart', 'Page'),
    ('Erin', 'Bretherton'),
    ('Nikki', 'Barrett'),
    ('Kirsty', 'McGregor'),
    ('Stevie', 'Ray'),
    ('Nathan', 'Lloyd'),
    ('Leigh', 'Pickford');


insert into productions (production_name)
values 
    ('Boy Swallows Universe'),
    ('Colin From Accounts'),
    ('Fake'),
    ('The Artful Dodger'),
    ('The Twelve'),
    ('Heartbreak High'),
    ('Thou Shalt Not Steal'),
    ('Total Control');

