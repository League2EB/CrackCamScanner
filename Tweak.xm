%hook CSDataCenter
+(bool)isPremiumAccount {
	NSLog(@"CSDataCenter - isPremiumAccount");
	return true;
}

+(bool)isPaidVersion{
	NSLog(@"CSDataCenter - isPaidVersion");
	return true;
}

+(int)accountType{
	NSLog(@"CSDataCenter - accountType");
	return 2;
}
%end

%hook CSLoggedinViewController 
-(void)sendCheckBalanceRequest {
	NSLog(@"CSLoggedinViewController - sendCheckBalanceRequest");
	return;
}
%end

%hook ISTSAPI
-(bool)isLoggedIn {
	NSLog(@"ISTSAPI - isLoggedIn");
	return true;
}
%end