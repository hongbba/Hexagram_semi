create table event(
event_idx number(20) primary key,
user_idx references user_idx,
event_subject varchar2(100) not null,
event_detail varchar2(2000),
event_ables varchar2(200)
);