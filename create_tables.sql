create table awards (
    award_id serial primary key,
    award_name varchar(100) not null,
    category_id integer not null,
    presenting_partner_id integer,
    foreign key (category_id) references categories (category_id) on delete cascade,
    foreign key (presenting_partner_id) references presenting_partners (presenting_partner_id) on delete set null
);

create table categories (
    category_id integer primary key,
    category_name varchar(50) not null
);

create table presenting_partners (
    presenting_partner_id serial primary key,
    presenting_partners_name varchar(50) not null
);

create table nominations (
    nomination_id serial primary key,
    award_id integer not null,
    is_winner boolean default false
    talent_id integer not null,
    production_id integer,
    nomination_year integer default 2025
);

create table talents (
    talent_id serial primary key,
    talent_fname varchar(50) not null,
    talent_lname varchar(50) not null,
    social_handle varchar(50)
);

create table productions (
    production_id serial primary key,
    production_name varchar(50) not null,
    production_co_id integer,
    episode_id integer,
    distribution_co_id integer,
    foreign key (production_co_id) references production_companies (production_co_id) on delete set null,
    foreign key (episode_id) references episodes (episode_id) on delete set null,
    foreign key (distribution_co_id) references distribution_companies (distribution_co_id) on delete set null
);

create table production_companies (
    production_co_id serial primary key,
    production_co_name varchar(50) not null
);

create table episodes (
    episode_id serial primary key,
    episode_number integer not null,
    episode_name varchar(50)
);

create table distribution_companies (
    distribution_co_id serial primary key,
    distribution_co_name varchar(50) not null
);