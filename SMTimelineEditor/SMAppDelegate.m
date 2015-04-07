//
//  SMAppDelegate.m
//  SMTimelineEditor
//
//  Created by Stephan Michels on 26.09.12.
//  Copyright (c) 2012 Stephan Michels. All rights reserved.
//

#import "SMAppDelegate.h"
#import "SMMainViewController.h"

@interface SMAppDelegate ()


@end

@implementation SMAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    CGSize s = CGSizeMake(800, 800);
    NSWindow *window0 = [[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, s.width, s.height)
                                                    styleMask:NSTitledWindowMask | NSClosableWindowMask
                                                      backing:NSBackingStoreBuffered
                                                        defer:YES];
    [window0 center];
    //[window0 setStyleMask:[window styleMask] | NSResizableWindowMask];
    [window0 setTitle:@"SMTimeline"];
   // NSWindowController *sm = [[NSWindowController alloc] initWithWindow:window0];

    
    SMMainViewController *main = [[SMMainViewController alloc]init];
     [window0.contentView addSubview:main.view];
    [window0 setFrameAutosaveName:[window0 representedFilename]];
}

@end
