@Entry
@Preview
@Component
export struct ToolsPage{
  build(){
   Column(){
     Grid(){
       GridItem(){
         Column(){
           Image($r('app.media.app_icon'))
         }
       }
     }
     .height('100%')
     .width('100%')
   }
  }
}