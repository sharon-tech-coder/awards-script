-- modify awards table character count
alter table awards
alter column award_name set data type varchar(150);

-- delete a presenting partner
delete from presenting_partners
where presenting_partner_id = 6;

-- update awards presenting partners
update awards
set presenting_partner_id = case
    when award_name = 'Best Casting in Television' then 5
    when award_name = 'Best Supporting Actress in a Drama' then 3
    when award_name = 'Best Supporting Actor in a Drama' then 3
    when award_name = 'Best Reality Program' then 2
    when award_name = 'Best Entertainment Program' then 1
    else presenting_partner_id
end
where award_name in ('Best Casting in Television', 'Best Supporting Actress in a Drama', 'Best Supporting Actor in a Drama','Best Reality Program','Best Entertainment Program');

-- update production stakeholders


-- update episode numbers
update nominations
set episode_number = case 
    when nomination_id = 30 then 4
    when nomination_id = 31 then 6
    when nomination_id = 32 then 5
    when nomination_id = 33 then 1
    when nomination_id = 34 then 2
    else episode_number
end
where nomination_id between 30 and 34;

-- update social handles
update talents
set social_handle = '@anna_torv_'
where talent_id = 33;

