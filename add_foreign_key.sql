    
    constraint fk_trans_dim foreign key(payment_key) references trans_dim(payment_key),
    constraint fk_customer_dim foreign key(customer_key) references customer_dim(customer_key),
    constraint fk_time_dim foreign key(time_key) references time_dim(time_key),
    constraint fk_item_dim foreign key(item_key) references item_dim(item_key),
    constraint fk_store_key foreign key(store_key) references store_dim(store_key)