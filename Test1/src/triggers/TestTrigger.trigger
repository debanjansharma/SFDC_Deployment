trigger TestTrigger on Account (before update) {
    
    List<Account> accList = Trigger.New;
    if(accList[0].Phone.length() < 10) {
        system.debug('Phone Number Is Less Than 10 Digits');
        accList[0].Phone.addError('Phone Number Must Be 10 Digits');
    }
}