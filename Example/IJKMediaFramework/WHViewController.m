//
//  WHViewController.m
//  IJKMediaFramework
//
//  Created by pengpeng-wang on 07/22/2023.
//  Copyright (c) 2023 pengpeng-wang. All rights reserved.
//

#import "WHViewController.h"
#import <IJKMediaFramework/IJKMediaFramework.h>

@interface WHViewController ()

@property (nonatomic, strong) IJKFFMoviePlayerController *player;

@end

@implementation WHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	NSURL *assetURL = [NSURL URLWithString:@"https://www.apple.com/105/media/us/iphone-x/2017/01df5b43-28e4-4848-bf20-490c34a926a7/films/feature/iphone-x-feature-tpl-cc-us-20170912_1280x720h.mp4"];
	
#ifdef DEBUG
	[IJKFFMoviePlayerController setLogReport:YES];
	[IJKFFMoviePlayerController setLogLevel:k_IJK_LOG_DEBUG];
#else
	[IJKFFMoviePlayerController setLogReport:NO];
	[IJKFFMoviePlayerController setLogLevel:k_IJK_LOG_INFO];
#endif

	[IJKFFMoviePlayerController checkIfFFmpegVersionMatch:YES];
	// [IJKFFMoviePlayerController checkIfPlayerVersionMatch:YES major:1 minor:0 micro:0];

	IJKFFOptions *options = [IJKFFOptions optionsByDefault];

	self.player = [[IJKFFMoviePlayerController alloc] initWithContentURL:assetURL withOptions:options];
	self.player.view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
	self.player.view.frame = self.view.bounds;
	self.player.scalingMode = IJKMPMovieScalingModeAspectFit;
	self.player.shouldAutoplay = YES;

	self.view.autoresizesSubviews = YES;
	[self.view addSubview:self.player.view];
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];

	[self.player prepareToPlay];
	[self.player play];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
	
	[self.player shutdown];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
