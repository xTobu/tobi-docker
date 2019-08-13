create table "user"
(
    account    varchar(20),
    password   varchar(20),
    id         bigserial not null
        constraint user_pkey
            primary key,
    created_at timestamp,
    updated_at timestamp,
    deleted_at timestamp
);

alter table "user"
    owner to su;

create index idx_user_deleted_at
    on "user" (deleted_at);
