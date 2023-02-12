@Entry
@Component
struct Index {
  private controller: TabsController = new TabsController()

  @Builder
  TabBuilder(index:number,title:string){
    Row() {
      Image($r('app.media.app_icon'))
        .width(23)
        .height(23)
        .margin({right:10})
      Text(title)
        .fontSize(17)
    }
    .padding(5)

  }

  build() {
    Column() {
      Tabs(
        {
          barPosition: BarPosition.Start,
          controller: this.controller
        }
      ) {
        TabContent() {
          Column(){

          }
          .width('100%')
          .height('100%')
          .backgroundColor('#ffff0000')
        }
        .tabBar(this.TabBuilder(0,"主页"))
        TabContent() {
          Column(){

          }
          .width('100%')
          .height('100%')
          .backgroundColor('#ff0018ff')
        }
        .tabBar(this.TabBuilder(0,"工具"))
        TabContent() {
          Column(){

          }
          .width('100%')
          .height('100%')
          .backgroundColor('#ffffe600')
        }
        .tabBar(this.TabBuilder(0,"发现"))
        TabContent() {
          Column(){

          }
          .width('100%')
          .height('100%')
          .backgroundColor('#ffffa200')
        }
        .tabBar(this.TabBuilder(0,"设置"))
      }
      .vertical(true)
      .barMode(BarMode.Scrollable)
      .barWidth(150)
      .barHeight('100%')
      .padding(10)

    }
    .width('100%')
    .height('100%')
  }
}