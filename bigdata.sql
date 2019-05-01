CREATE TABLE Ch1 (show String,channel String) row format delimited fields terminated BY ',' lines terminated BY '\n' tblproperties("skip.header.line.count"="0");


load data local inpath '/home/edureka/Downloads/Bigdata/join2_genchanA.txt' INTO table Ch1;

CREATE TABLE Ch2 (show String,channel String) row format delimited fields terminated BY ',' lines terminated BY '\n' tblproperties("skip.header.line.count"="0");

load data local inpath '/home/edureka/Downloads/Bigdata/join2_genchanB.txt' INTO table Ch2;

CREATE TABLE Ch3 (show String,channel String) row format delimited fields terminated BY ',' lines terminated BY '\n' tblproperties("skip.header.line.count"="0");

load data local inpath '/home/edureka/Downloads/Bigdata/join2_genchanC.txt' INTO table Ch3;

CREATE TABLE Chcount1 (show String,viewer_count bigint) row format delimited fields terminated BY ',' lines terminated BY '\n' tblproperties("skip.header.line.count"="0");

load data local inpath '/home/edureka/Downloads/Bigdata/join2_gennumA.txt' INTO table Chcount1;

CREATE TABLE Chcount2 (show String,viewer_count bigint) row format delimited fields terminated BY ',' lines terminated BY '\n' tblproperties("skip.header.line.count"="0");

load data local inpath '/home/edureka/Downloads/Bigdata/join2_gennumB.txt' INTO table Chcount2;

CREATE TABLE Chcount3 (show String,viewer_count bigint) row format delimited fields terminated BY ',' lines terminated BY '\n' tblproperties("skip.header.line.count"="0");

load data local inpath '/home/edureka/Downloads/Bigdata/join2_gennumC.txt' INTO table Chcount3;

1.)
create table ques1 as Select x.show, x.channel, y.viewer_count from Ch1 x, Chcount1 y where x.show = y.show;

select show,sum(viewer_count) from ques1 where channel = "ABC" group by show;

2.)
select channel,sum(viewer_count) from ques1 where channel = "BAT" group by channel;

3.)
create table ques3 as select show,sum(viewer_count) from ques1 where channel = "ABC" group by show;

select show, max(viewer_count) from ques3;

4.)
select show, channel from Ch3 where channel = "ZOO";
select show, channel from Ch2 where channel = "NOX";
select show, channel from Ch1 where channel = "ABC";
