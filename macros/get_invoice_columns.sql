{% macro get_invoice_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "amount_due", "datatype": dbt.type_int()},
    {"name": "amount_paid", "datatype": dbt.type_int()},
    {"name": "amount_remaining", "datatype": dbt.type_int()},
    {"name": "application_fee_amount", "datatype": dbt.type_int()},
    {"name": "post_payment_credit_notes_amount", "datatype": dbt.type_int()},
    {"name": "pre_payment_credit_notes_amount", "datatype": dbt.type_int()},
    {"name": "attempt_count", "datatype": dbt.type_int()},
    {"name": "attempted", "datatype": "boolean"},
    {"name": "auto_advance", "datatype": "boolean"},
    {"name": "billing", "datatype": dbt.type_string()},
    {"name": "billing_reason", "datatype": dbt.type_string()},
    {"name": "charge_id", "datatype": dbt.type_string()},
    {"name": "created", "datatype": dbt.type_timestamp()},
    {"name": "currency", "datatype": dbt.type_string()},
    {"name": "customer_id", "datatype": dbt.type_string()},
    {"name": "date", "datatype": dbt.type_timestamp()},
    {"name": "default_source_id", "datatype": dbt.type_string()},
    {"name": "description", "datatype": dbt.type_string()},
    {"name": "due_date", "datatype": dbt.type_timestamp()},
    {"name": "ending_balance", "datatype": dbt.type_int()},
    {"name": "finalized_at", "datatype": dbt.type_timestamp()},
    {"name": "footer", "datatype": dbt.type_string()},
    {"name": "hosted_invoice_url", "datatype": dbt.type_string()},
    {"name": "id", "datatype": dbt.type_string()},
    {"name": "invoice_pdf", "datatype": dbt.type_string()},
    {"name": "is_deleted", "datatype": "boolean"},
    {"name": "livemode", "datatype": "boolean"},
    {"name": "metadata", "datatype": dbt.type_string()},
    {"name": "next_payment_attempt", "datatype": dbt.type_timestamp()},
    {"name": "number", "datatype": dbt.type_string()},
    {"name": "paid", "datatype": "boolean"},
    {"name": "default_payment_method_id", "datatype": dbt.type_string()},
    {"name": "payment_intent_id", "datatype": dbt.type_string()},
    {"name": "subscription_id", "datatype": dbt.type_string()},
    {"name": "period_end", "datatype": dbt.type_timestamp()},
    {"name": "period_start", "datatype": dbt.type_timestamp()},
    {"name": "receipt_number", "datatype": dbt.type_string()},
    {"name": "starting_balance", "datatype": dbt.type_int()},
    {"name": "statement_descriptor", "datatype": dbt.type_string()},
    {"name": "status", "datatype": dbt.type_string()},
    {"name": "status_transitions_finalized_at", "datatype": dbt.type_timestamp()},
    {"name": "status_transitions_marked_uncollectible_at", "datatype": dbt.type_timestamp()},
    {"name": "status_transitions_paid_at", "datatype": dbt.type_timestamp()},
    {"name": "status_transitions_voided_at", "datatype": dbt.type_timestamp()},
    {"name": "subscription_id", "datatype": dbt.type_string()},
    {"name": "subscription_proration_date", "datatype": dbt.type_int()},
    {"name": "subtotal", "datatype": dbt.type_int()},
    {"name": "tax", "datatype": dbt.type_int()},
    {"name": "tax_percent", "datatype": dbt.type_numeric()},
    {"name": "threshold_reason_amount_gte", "datatype": dbt.type_int()},
    {"name": "total", "datatype": dbt.type_int()},
    {"name": "webhooks_delivered_at", "datatype": dbt.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
