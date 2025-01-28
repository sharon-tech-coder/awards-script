create table categories (
    category_id integer primary key,
    category_name varchar(50) not null
);

create table presenting_partners (
    presenting_partner_id integer primary key,
    presenting_partners_name varchar(50) not null
);

create table awards (
    award_id serial primary key,
    award_name varchar(100) not null,
    category_id integer not null,
    presenting_partner_id integer,
    foreign key (category_id) references categories (category_id) on delete cascade,
    foreign key (presenting_partner_id) references presenting_partners (presenting_partner_id) on delete set null
);

create table talents (
    talent_id serial primary key,
    talent_fname varchar(50) not null,
    talent_lname varchar(50) not null,
    social_handle varchar(50)
);

create table production_companies (
    production_co_id serial primary key,
    production_co_name varchar(100) not null
);

create table distribution_companies (
    distribution_co_id serial primary key,
    distribution_co_name varchar(50) not null
);

create table productions (
    production_id serial primary key,
    production_name varchar(50) not null
);

create table nominations (
    nomination_id serial primary key,
    award_id integer not null,
    is_winner boolean default false,
    talent_id integer not null,
    production_id integer,
    nomination_year integer default 2025,
    episode_number integer,
    foreign key (talent_id) references talents (talent_id) on delete cascade,
    foreign key (award_id) references awards (award_id) on delete cascade,
    foreign key (production_id) references productions (production_id) on delete set null
);

create table production_production_companies (
    production_production_co_id serial primary key,
    production_id integer not null,
    production_co_id integer not null,
    foreign key (production_id) references productions (production_id) on delete cascade,
    foreign key (production_co_id) references production_companies (production_co_id) on delete cascade 
);

create table production_distribution_companies (
    production_distribution_co_id serial primary key,
    production_id integer not null,
    distribution_co_id integer not null,
    foreign key (production_id) references productions (production_id) on delete cascade,
    foreign key (distribution_co_id) references distribution_companies (distribution_co_id) on delete cascade 
);