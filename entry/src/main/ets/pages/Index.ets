import { MainPage } from '../layout/mainPage'
import { ToolsPage } from '../layout/toolsPage'

@Entry
@Component
struct Index {
  private controller: TabsController = new TabsController()
  @State tabsIndex: number = 0

  @Builder
  TabBuilder(index: number, title: string) {
    Row() {
      Image($r('app.media.app_icon'))
        .width(20)
        .height(20)
        .margin({ right: 10 })
      Text(title)
        .fontSize(15)
        .fontColor(this.tabsIndex == index ? '#ffffff' : '#ff000000')
    }
    .padding(8)
    .backgroundColor(this.tabsIndex == index ? '#ff0036ff' : '#00000000')
    .clip(true)
    .borderRadius(20)
    .width('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Column() {
      Row() {
        Row() {
          Image($r('app.media.app_icon'))
            .clip(true)
            .width(35)
            .height(35)
            .borderRadius(100)
            .backgroundColor('#ffffff')
            .padding(1)


          Column() {
            Text('未登录')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 2 })
            Text('15485624')
              .fontSize(14)
          }
          .alignItems(HorizontalAlign.Start)
          .margin({
            left: 10,
            right: 30
          })

        }

        Blank()

        Search(
          {
            placeholder: '输入想要搜索的功能'
          }
        )
          .width(270)
            //.layoutWeight(1)
          .searchButton('搜索')
          .placeholderFont(
            {
              size: 14
            }
          )
          .textFont(
            {
              size: 14,
            }
          )

      }
      .width('100%')
      .padding(20)

      Tabs(
        {
          barPosition: BarPosition.Start,
          controller: this.controller
        }
      ) {
        TabContent() {
          MainPage()
        }
        .tabBar(this.TabBuilder(0, "主页"))

        TabContent() {
          Column() {
            ToolsPage()
          }
          .width('100%')
          .height('100%')
          .backgroundColor('#ff0018ff')
        }
        .tabBar(this.TabBuilder(1, "工具"))

        TabContent() {
          Column() {

          }
          .width('100%')
          .height('100%')
          .backgroundColor('#ffffe600')
        }
        .tabBar(this.TabBuilder(2, "发现"))

        TabContent() {
          Column() {

          }
          .width('100%')
          .height('100%')
          .backgroundColor('#ffffa200')
        }
        .tabBar(this.TabBuilder(3, "设置"))
      }
      .vertical(true)
      .barMode(BarMode.Scrollable)
      .barWidth(150)
      .barHeight('100%')
      .padding(10)
      .layoutWeight(1)
      .onChange((index: number) => {
        this.tabsIndex = index
      })

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#fff3f3f6')

  }
}