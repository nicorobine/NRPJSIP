/* $Id: TestViewController.m 3552 2011-05-05 05:50:48Z nanang $ */
/* 
 * Copyright (C) 2010-2011 Teluu Inc. (http://www.teluu.com)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
 */
#import "TestViewController.h"

@implementation TestViewController
@synthesize testDesc;
@synthesize button1;
@synthesize button2;
@synthesize key;

- (void)button1Pressed:(id)sender {
    self.key = 1;
    [self.button1 setHidden:true];
    [self.button2 setHidden:true];
}

- (void)button2Pressed:(id)sender {
    self.key = 2;
    [self.button1 setHidden:true];
    [self.button2 setHidden:true];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [button1 addTarget:self action:@selector(button1Pressed:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button2 addTarget:self action:@selector(button2Pressed:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [testDesc setEditable:false];
}


@end
