//
//  googlemap.h
//  tei_test2
//
//  Created by akaon on 12. 8. 9..
//  Copyright (c) 2012년 akaon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface googlemap : UIViewController <MKMapViewDelegate> {
    
    IBOutlet MKMapView *mapView1;
    
}
- (IBAction) main1;

@end
