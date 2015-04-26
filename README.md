# NetworkType
Simple iOS drop-in class with only one class method for check which kind of network a device is connected. 
The method use the status bar for get the current info on a device so be sure that it's visibile.

## Actually networks recognized
- Unknown _(this happens when the status bar is hidden)_
- 2G
- 3G
- 4G
- LTE
- Wifi


## Adding NetworkType to your project 

Just copy the files:

- NetworkType.h
- NetworkType.m

in your project; then include the header wherever you need:

	#import "NetworkType.h" 
    
That's it!


## Usage
You can use the class method:

	+ (NSString*) checkNetworkType;

for get the network type that your device is actually connected just like this:

	NSLog(@"Your actual network type: %@", [NetworkType checkNetworkType]);





