/*Regular season rushing yards for the Bills*/
select sum(rushing_yards) as 'YDS'
from bills
where posteam = 'BUF' and season_type = 'REG';

/*showing yards gained each week*/
select week, sum(rushing_yards) as 'Rushing Yards'
from bills
where posteam = 'BUF' and season_type = 'REG'
group by week
order by sum(rushing_yards) desc;

/*Offensive Plays for the Bills*/
select count(play_id)
from bills
where two_point_attempt = 0 and (play_type = 'qb_spike' or play_type = 'qb_kneel' or play_type = 'run' or play_type = 'pass') and posteam = 'BUF' and season_type = 'REG';

/*Passing yards for the Bills*/
select sum(yards_gained) as 'Passing YDS'
from bills
where two_point_attempt = 0 and play_type = 'pass' and posteam = 'BUF' and season_type = 'REG';

