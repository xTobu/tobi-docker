create schema if not exists "capital";
create table capital.demo
(
    sstockidx    smallint  not null,
    sdecimal     smallint  not null,
    stypeno      smallint,
    bstrmarketno varchar   not null,
    nhigh        integer   not null,
    nopen        integer   not null,
    nlow         integer   not null,
    nclose       integer   not null,
    ntickqty     integer   not null,
    nref         integer   not null,
    nbid         integer   not null,
    nbc          integer   not null,
    nask         integer   not null,
    nac          integer   not null,
    ntbc         integer   not null,
    ntac         integer   not null,
    nfutureoi    integer   not null,
    ntqty        integer   not null,
    nyqty        integer   not null,
    nup          integer   not null,
    ndown        integer   not null,
    nsimulate    integer,
    id           bigserial not null
        constraint demo_pk
            primary key,
    created_at   timestamp,
    updated_at   timestamp,
    deleted_at   timestamp
);

comment on column capital.demo.sstockidx is '商品自定索引代號';

comment on column capital.demo.sdecimal is '小數位數';

comment on column capital.demo.bstrmarketno is '市埸代碼';

comment on column capital.demo.nhigh is '最高價';

comment on column capital.demo.nopen is '開盤價';

comment on column capital.demo.nlow is '最低價';

comment on column capital.demo.nclose is '成交價';

comment on column capital.demo.ntickqty is '單量';

comment on column capital.demo.nref is '昨收、參考價';

comment on column capital.demo.nbid is '買價';

comment on column capital.demo.nbc is '買量';

comment on column capital.demo.nask is '賣價';

comment on column capital.demo.nac is '賣量';

comment on column capital.demo.ntbc is '買盤量';

comment on column capital.demo.ntac is '賣盤量';

comment on column capital.demo.nfutureoi is '期貨未平倉 OI';

comment on column capital.demo.ntqty is '總量';

comment on column capital.demo.nyqty is '昨量';

comment on column capital.demo.nup is '漲停價';

comment on column capital.demo.ndown is '跌停價';

comment on column capital.demo.nsimulate is '揭示 0:一般 1:試算';

alter table capital.demo
    owner to su;

