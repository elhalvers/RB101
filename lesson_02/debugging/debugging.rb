2.2.1 :027 > post.categories << news
   (0.1ms)  begin transaction
  SQL (0.5ms)  INSERT INTO "post_categories" ("category_id", "post_id") VALUES (?, ?)  [["category_id", 3], ["post_id", 6]]
   (1.9ms)  rollback transaction
NoMethodError: undefined method `name' for nil:NilClass
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:80:in `cached_counter_attribute_name'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:76:in `has_cached_counter?'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/has_many_association.rb:84:in `update_counter'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/has_many_through_association.rb:66:in `insert_record'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/collection_association.rb:523:in `block (2 levels) in concat_records'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/collection_association.rb:367:in `add_to_target'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/collection_association.rb:522:in `block in concat_records'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/collection_association.rb:520:in `each'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/collection_association.rb:520:in `concat_records'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/has_many_through_association.rb:43:in `concat_records'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/collection_association.rb:137:in `block in concat'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/collection_association.rb:152:in `block in transaction'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/connection_adapters/abstract/database_statements.rb:202:in `block in transaction'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/connection_adapters/abstract/database_statements.rb:210:in `within_new_transaction'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/connection_adapters/abstract/database_statements.rb:202:in `transaction'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/transactions.rb:209:in `transaction'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/collection_association.rb:151:in `transaction'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/collection_association.rb:137:in `concat'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/has_many_through_association.rb:37:in `concat'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/activerecord-4.0.0/lib/active_record/associations/collection_proxy.rb:945:in `<<'
    from (irb):27
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/railties-4.0.0/lib/rails/commands/console.rb:90:in `start'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/railties-4.0.0/lib/rails/commands/console.rb:9:in `start'
    from /Users/jim/.rvm/gems/ruby-2.2.1/gems/railties-4.0.0/lib/rails/commands.rb:64:in `<top (required)>'
    from bin/rails:4:in `require'
    from bin/rails:4:in `<main>'2.2.1 :028 >
