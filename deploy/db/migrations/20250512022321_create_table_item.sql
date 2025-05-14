-- migrate:up
CREATE TABLE item (
    id integer NOT NULL,
    name varchar(100) NOT NULL,
    description varchar(1200) NULL,
    icon integer NOT NULL,
    max_stack integer NOT NULL,
    item_level integer NOT NULL,
    search_category_id integer NOT NULL,
    job_category_id integer,
    is_hq boolean NOT NULL,
    is_crafted boolean NOT NULL,
    is_unique boolean NOT NULL,
    is_glam boolean NOT NULL,
    is_dye boolean NOT NULL,
    CONSTRAINT pk_item PRIMARY KEY (id),
    CONSTRAINT fk_item_search_category FOREIGN KEY (search_category_id) REFERENCES search_category (id),
    CONSTRAINT fk_item_job_category FOREIGN KEY (job_category_id) REFERENCES job_category (id)
);

-- migrate:down

