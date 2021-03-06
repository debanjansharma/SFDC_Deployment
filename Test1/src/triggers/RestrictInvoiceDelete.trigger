trigger RestrictInvoiceDelete on Invoice_Statement__c (before delete) {
for(Invoice_Statement__c invoice:[SELECT Id FROM Invoice_Statement__c WHERE Id IN (SELECT Invoice_Statement__c FROM Line_Item__c)
                                  AND Id IN :Trigger.old]){
       Trigger.oldMap.get(invoice.Id).addError('Cannot delete Invoice Statement with Line Items.');
                                  }
}