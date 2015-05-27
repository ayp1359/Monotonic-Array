#import <Foundation/Foundation.h>

BOOL isMonotonic(NSArray *numberArray){
  
  BOOL goingUp = YES;
  BOOL goingDown = YES;
  
  for (int i=0; (goingUp || goingDown) && i<numberArray.count-1; i++) {
    if([numberArray[i+1] integerValue]>[numberArray[i] integerValue]){
      goingDown = NO;
    }
    else if([numberArray[i+1] integerValue]<[numberArray[i] integerValue]){
      goingUp = NO;
    }
  }
  return (goingUp || goingDown);
}

int main(int argc, const char *argv[]){
  @autoreleasepool {
    
    NSArray *numberArray = @[@0,@1,@3,@7,@9];
    NSLog(@"Is array monotonic: %@",isMonotonic(numberArray)? @"YES":@"NO");
    
  }
  
  return 0;
}