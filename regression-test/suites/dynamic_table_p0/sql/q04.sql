set enable_vectorized_engine=true;
select `answers.date`, `answers.user` from test_es_nested_json where size(`answers.date`) > 3 limit 10;
select `answers.date`[1], qid, title from test_es_nested_json where array_contains(`answers.user`, 'Michael Ecklund (804104)')  order by qid limit 10;
select qid, title from test_es_nested_json where array_contains(`answers.date`, '2012-04-03T19:35:38.007');
select `answers.date` from test_es_nested_json where size(`answers.date`) > 0 order by `answers.date`[1] limit  10;
select qid + 1, `answers.date`, user from test_es_nested_json where  title  like '%java%'  order by  creationDate + 10, qid  limit 10;
select * from test_es_nested_json where  title  like '%java%'  order by  creationDate + 10, qid  limit 10;
select creationDate, title, tag from test_es_nested_json where  title  like '%java%'  order by  creationDate, qid limit 10;
select `answers.user`, creationDate, tag, qid from test_es_nested_json where  title  like '%c%'  order by  qid limit 10;
select `answers.user`, creationDate, tag, qid, title from test_es_nested_json where  title  like '%c%'  order by  creationDate limit 10;
select tag, title, qid + 10222 from test_es_nested_json where  title  like '%java%'  order by  creationDate, qid limit 10;
select tag, title, qid + 10222 from test_es_nested_json where  title  match 'java'  order by  creationDate,qid limit 10;
select * from test_es_nested_json where creationDate > '2012-04-01'  order by  creationDate, qid limit 10;
select * from test_es_nested_json where creationDate > '2012-04-01' and title  match 'java' order by  creationDate, qid limit 10;
