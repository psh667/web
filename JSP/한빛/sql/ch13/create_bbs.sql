create table bbs (
    seqno    integer(8)   not null, 
    title    varchar(50)  not null, 
    content  varchar(500) not null, 
    writer   varchar(20)  not null, 
    wdate    date         not null, 
    wtime    time         not null, 
    primary key(seqno)
);
