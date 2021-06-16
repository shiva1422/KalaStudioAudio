//
//  ViewController.m
//  kalastudioaudio
//
//  Created by Shiva Shankar patel psy on 6/15/21.
//

#import "ViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController ()<UIDocumentPickerDelegate,UIDocumentInteractionControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)openFile:(id)sender
{
    
    
    NSLog(@"open the file");
    //NSString<UTType *> *types = @[[NSString alloc] initWithObjects:(UTType*)kUTTypeAudio , nil ];
    UIDocumentPickerViewController * docPicker ;
    @try{
            docPicker = [[UIDocumentPickerViewController alloc] initWithDocumentTypes:@[@"public.audio"]
                                                                               inMode:UIDocumentPickerModeImport];
        
       // docPicker.modalPresentationStyle = UIModalPresentationPopover;
        [self presentViewController:docPicker animated:YES completion:nil];
    }
    @catch(NSException *docexc)
    {
        NSLog(@"DOCUMENT PICKER EXCEPTION-%@",[docexc callStackSymbols]);
    }
    docPicker.delegate = self;
    
}
- (void)documentPicker:(UIDocumentPickerViewController *)controller didPickDocumentAtURL:(NSURL *)url
{
    NSLog(@"imported-%@",url.absoluteString);
}
@end
