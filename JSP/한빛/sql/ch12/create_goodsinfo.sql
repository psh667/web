create table goodsinfo (
    code     char(5) not null, 
    title    varchar(50) not null, 
    writer   varchar(20), 
    price    int(8) not null, 
    primary key(code)
);
