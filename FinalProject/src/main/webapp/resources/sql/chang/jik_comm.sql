
create table jik_comm(
jik_comm_num			NUMBER(10) primary key,
jik_board_num			NUMBER(20) references jik(jik_num) on delete cascade,
nick					VARCHAR2(20),
jik_comm_content		VARCHAR2(3000),
jik_comm_date			DATE default sysdate,
jik_comm_re_ref			NUMBER(10),
jik_comm_re_rev			NUMBER(10),
jik_comm_re_seq			NUMBER(10),
jik_comm_secret			CHAR(2)
)

select * from jik_comm;

drop table jik_comm;