DELETE FROM invoice_items
WHERE InvoiceId in (SELECT InvoiceId FROM invoices
WHERE BillingState ISNULL or BillingPostalCode ISNULL);

DELETE FROM invoices 
WHERE BillingState ISNULL or BillingPostalCode ISNULL;
