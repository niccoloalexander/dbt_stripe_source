{{ config(enabled=var('stripe__using_subscriptions', True)) }}

{% if var('stripe__price', True) %}

{{
    fivetran_utils.union_data(
        table_identifier='price', 
        database_variable='stripe_database', 
        schema_variable='stripe_schema', 
        default_database=target.database,
        default_schema='stripe',
        default_variable='price_source',
        union_schema_variable='stripe_union_schemas',
        union_database_variable='stripe_union_databases'
    )

}}

{% else %}

{{
    fivetran_utils.union_data(
        table_identifier='plan', 
        database_variable='stripe_database', 
        schema_variable='stripe_schema', 
        default_database=target.database,
        default_schema='stripe',
        default_variable='plan_source',
        union_schema_variable='stripe_union_schemas',
        union_database_variable='stripe_union_databases'
    )

}}

{% endif %}

{{ livemode_predicate() }}