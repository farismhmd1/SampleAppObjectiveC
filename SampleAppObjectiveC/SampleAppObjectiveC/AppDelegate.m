//
//  AppDelegate.m
//  SampleAppObjectiveC
//
//  Created by Faris Muhammed on 06/11/21.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "LoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // For changing ViewController while opening app set window
//    self.window = [[UIWindow alloc] init];
    // new way is UIWindow.new
    
    
    [self setHomeScreen];
    return YES;
}


- (void)loadInitialScreen {
    
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];

    if ([prefs boolForKey:@"SettingsLogStatus"]) {
        [self setHomeScreen];
    }
    else {
        [self setLoginScreen];
    }
    
}
/// Set Home Screen
- (void)setHomeScreen {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    HomeViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];

    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:vc];
    
    self.window = UIWindow.new;
    [self.window makeKeyAndVisible];
    self.window.rootViewController = navVC;
    
}

/// Set Lopgin Screen
- (void)setLoginScreen {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LoginViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];

    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:vc];
    
    self.window = UIWindow.new;
    [self.window makeKeyAndVisible];
    self.window.rootViewController = navVC;
    
}




@end
