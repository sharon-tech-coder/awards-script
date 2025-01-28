-- which production received the most nominations 
select p.production_name, count(n.nomination_id) as nomination_count from productions p 
join nominations n on n.production_id = p.production_id 
group by p.production_name
order by nomination_count desc limit 1;

-- the talents who received multiple nominations
select concat(t.talent_fname,' ',t.talent_lname) as talent, count(n.nomination_id) as nomination_count from talents t 
join nominations n on n.talent_id = t.talent_id
group by talent
having count(n.nomination_id) > 1
order by nomination_count desc;

-- list all the stakeholder companies info for all Best Drama Series nominees
select distinct p.production_name, pc.production_co_name as production_company, dc.distribution_co_name as distribution_company from productions p 
join nominations n on n.production_id = p.production_id 
join awards a on a.award_id = n.award_id
join production_production_companies ppc on ppc.production_id = p.production_id
join production_distribution_companies pdc on pdc.production_id = p.production_id
join production_companies pc on pc.production_co_id = ppc.production_co_id
join distribution_companies dc on dc.distribution_co_id = pdc.distribution_co_id
where a.award_id = 1
order by p.production_name;

-- check on Anna Torv's social handle
select social_handle from talents
where talent_fname = 'Anna' and talent_lname = 'Torv';

-- check if any presenting partners are associated with the Casting Award
select pp.presenting_partners_name from presenting_partners pp
where pp.presenting_partner_id in (
    select a.presenting_partner_id
    from awards a where lower(a.award_name) like '%casting%'
    );

-- check if there's a nominee called sth 'steal'
select p.production_name, a.award_name from nominations n 
join productions p on p.production_id = n.production_id
join awards a on n.award_id = a.award_id
where lower(p.production_name) like '%steal'
group by p.production_name, a.award_name
order by a.award_name asc;

-- the nomination summary for categories
select count(n.nomination_id) as nomination_count, c.category_name
from awards a 
join categories c on c.category_id = a.category_id
join nominations n on n.award_id = a.award_id
group by c.category_name
order by nomination_count desc;
