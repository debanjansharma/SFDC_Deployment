trigger HelloWorldTrigger on Book__c (before insert) {
Book__C[] books=Trigger.new;
    MyHelloWorld.applyDiscount(books);
}