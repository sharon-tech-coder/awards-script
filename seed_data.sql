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

insert into awards (award_name,category_id,presenting_partner_id)
values 
    ('Best Drama Series',1),
    ('Best Miniseries',1),
    ('Best Narrative Comedy Series',1),
    ('Best Comedy Entertainment Program',1),
    ('Best Entertainment Program',1,1),
    ('Best Factual Entertainment Program',1),
    ('Best Lifestyle Program',1),
    ('Best Reality Program',1,2),
    ('Best Documentary or Factual Program',1),
    ('Best Children''s Program',1),
    ('Best Stand-Up Special',1),
    ('Best Lead Actress in a Drama',1,3),
    ('Best Lead Actor in a Drama',1,3),
    ('Best Comedy Performer',1),
    ('Best Acting in a Comedy',1),
    ('Best Supporting Actress in a Drama',1),
    ('Best Supporting Actor in a Drama',1),
    ('Best Direction in Drama or Comedy',1),
    ('Best Screenplay in Television',1),
    ('Best Direction in Nonfiction Television',1),
    ('Best Cinematography in Television',6),
    ('Best Costume Design in Television',6),
    ('Best Editing in Television',6)
    ('Best Production Design in Television',6),
    ('Best Original Score in Television',6),
    ('Best Sound in Television',6),
    ('Best Casting in Television',6,5),
    ('Best Film',2),
    ('Best Indie Film',2),
    
